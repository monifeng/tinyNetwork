#ifndef _NET_HTTP_HTTPSERVER_H_
#define _NET_HTTP_HTTPSERVER_H_

#include "../../net/TcpServer.h"

namespace tnet
{    
namespace net
{
class HttpRequest;
class HttpResponse;

class HttpServer : noncopyable
{
public:
    typedef std::function<void (const HttpRequest&, HttpResponse*)>
                            HttpCallback;

    HttpServer(EventLoop* loop, 
                const InetAddress& listenAddr,
                const string& name,
                TcpServer::Option option = TcpServer::kNoReusePort);

    EventLoop* getLoop() const { return server_.getLoop(); }

    void setHttpCallback(const HttpCallback& cb)
    {
        httpCallback_ = cb;
    }

    void setThreadNum(int numThreads)
    {
        server_.setThreadNum(numThreads);
    }

    void start();

private:
    void onConnection(const TcpConnectionPtr& conn);
    void onMessage(const TcpConnectionPtr& conn,
                    Buffer* buf,
                    Timestamp receiveTime);
    void onRequest(const TcpConnectionPtr& conn,
                  const HttpRequest&);

    TcpServer server_;
    HttpCallback httpCallback_;
};
} // namespace net
} // namespace tnet

#endif // _NET_HTTP_HTTPSERVER_H_