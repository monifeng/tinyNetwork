#include "muduo/net/TcpServer.h"
#include "muduo/net/EventLoop.h"
#include "muduo/base/Logging.h"
#include <map>
#include <string>

using namespace muduo;
using namespace muduo::net;

typedef std::map<string, string> Users;
Users users;

string getUser(const string& user)
{
    string res = "no such users";
    auto it = users.find(user);
    if (it != users.end())
    {
        res = it->second;
    }
    return res;
}

void onMessage(const TcpConnectionPtr& conn,
                Buffer* buf,
                Timestamp time)
{
    const char* crlf = buf->findCRLF();
    if (crlf)
    {
        string user(buf->peek(), crlf);
        conn->send(getUser("user") + "\r\n");
        buf->retrieveUntil(crlf+2);
        conn->shutdown();
    }
    
}

int main()
{
    EventLoop loop;
    InetAddress serveAddr(1079);
    TcpServer server(&loop, InetAddress (1079), "Finger");
    server.setMessageCallback(onMessage);
    server.start();
    loop.loop();
}