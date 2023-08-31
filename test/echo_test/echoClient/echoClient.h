#include "muduo/net/TcpClient.h"

#include "muduo/base/Logging.h"
#include "muduo/net/EventLoop.h"

using namespace muduo;
using namespace muduo::net;

class EchoClient
{
EchoClient::EchoClient(EventLoop* loop,
                         const InetAddress& serverAddr,
                         const string& id);
    
    void connect();

private:
    void onConnect(const TcpConnectionPtr& conn);

    void onMessage(const TcpConnectionPtr& conn, Buffer* buf, Timestamp time);

    TcpClient client_;
    EventLoop* loop_;
};