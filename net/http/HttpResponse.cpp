#include "../../net/http/HttpResponse.h"
#include "../../net/Buffer.h"

#include "stdio.h"

using namespace tnet;
using namespace tnet::net;

// 头文件消息实例：
// HTTP/1.1 404 Not Found
// Content-Length: 203
// Content-Type: text/html; charset=iso-8859-1
// Date: Tue, 10 Aug 2021 15:06:28 GMT
// Server: Apache
void HttpResponse::appendToBuffer(Buffer* output) const
{
    // HTTP 1.1 404 Not Found;
    char buf[32];
    snprintf(buf, sizeof buf, "HTTP/1.1 %d", statusCode_);
    output->append(buf);
    output->append(statusMessage_);
    output->append("\r\n");

    if (closeConnection_)
    {
        output->append("Connection: close\r\n");
    }
    else
    {
        snprintf(buf, sizeof buf, "Content-Length: %zd\r\n", body_.size());
        output->append(buf);
        output->append("Connection: Keep-Alive\r\n");
    }

    for (const auto& header : headers_)
    {
        output->append(header.first);
        output->append(":");
        output->append(header.second);
        output->append("\r\n");
    }

    output->append("\r\n");
    output->append(body_);
}