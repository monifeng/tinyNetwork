#include "echoClient.h"

#include "muduo/base/Logging.h"
#include "muduo/base/Thread.h"
#include "muduo/net/InetAddress.h"

#include <utility>

#include <stdio.h>
#include <unistd.h>

using std::placeholders::_1;
using std::placeholders::_2;
using std::placeholders::_3;

int current=0;
std::vector<std::unique_ptr<EchoClient>> clients;

EchoClient::EchoClient(EventLoop* loop,
                         const InetAddress& serverAddr,
                         const string& id)
        : loop_(loop),
      client_(loop, serverAddr, "EchoClient"+id)
    {
        client_.setConnectionCallback(
            std::bind(&EchoClient::onConnect, this, _1)
        );
        client_.setMessageCallback(
            std::bind(&EchoClient::onMessage, this, _1, _2, _3)
        );
    }

void EchoClient::connect()
{
    client_.connect();
}

void EchoClient::onConnect(const TcpConnectionPtr& conn)
{
    LOG_TRACE << conn->localAddress().toIpPort() << " -> "
        << conn->peerAddress().toIpPort() << " is "
        << (conn->connected() ? "UP" : "DOWN");
    if (conn->connected())
    {
      ++current;
      if (implicit_cast<size_t>(current) < clients.size())
      {
        clients[current]->connect();
      }
      LOG_INFO << "*** connected " << current;
    }
    conn->send("world\n");
}

void EchoClient::onMessage(const TcpConnectionPtr& conn,
                         Buffer* buf, Timestamp time)
{
    LOG_TRACE << conn->localAddress().toIpPort() << " -> "
        << conn->peerAddress().toIpPort() << " is "
        << (conn->connected() ? "UP" : "DOWN");

    string msg(buf->retrieveAllAsString());
    LOG_TRACE << conn->name() << " recv " << msg.size() << " bytes at " << time.toString();
    if (msg == "quit\n")
    {
      conn->send("bye\n");
      conn->shutdown();
    }
    else if (msg == "shutdown\n")
    {
      loop_->quit();
    }
    else
    {
      conn->send(msg);
    }
}