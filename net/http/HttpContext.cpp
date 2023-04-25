#include "../../net/Buffer.h"
#include "../../net/http/HttpContext.h"

using namespace tnet;
using namespace tnet::net;

//格式：
/*
    Content-Type: text/html; charset=iso-8859-1
    Date: Tue, 10 Aug 2021 15:06:28 GMT
    Server: Apache  
*/

// 解析请求
bool HttpContext::processRequestLine(const char* begin, const char* end)
{
    bool succeed = false;
    const char* start = begin;
    const char* space = std::find(start, end, ' ');
    // GET /query?name=csdn HTTP/1.1 跳过空格，然后找到
    if (space != end && request_.setMethod(start, space))
    {
        start = space + 1;
        space = std::find(start, end, ' ');
        if (space != end)
        {
            const char* question = std::find(start, space, '?');
            if (question != space)
            {
                // /query
                request_.setPath(start, question); 
                // name=csdn
                request_.setQuery(question, space);
            }
            else 
            {   // path = /query?name=csdn
                request_.setPath(start, space);
            }
            start = space+1;
            succeed = space+1;
            succeed = end-start == 8 && std::equal(start, end-1, "HTTP/1.");
            if (succeed)
            {
              
                if (*(end-1) == '1')
                {
                  // version = http1.1
                  request_.setVersion(HttpRequest::kHttp11);
                }
                else if (*(end-1) == '0')
                {
                  request_.setVersion(HttpRequest::kHttp10);
                }
                else 
                {
                    succeed = false;
                }
            }
        }
    }
    return succeed;
}

// 解析request
/*
    Content-Type: text/html; charset=iso-8859-1
    Date: Tue, 10 Aug 2021 15:06:28 GMT
    Server: Apache  
*/

bool HttpContext::parseRequest(Buffer* buf, Timestamp receiveTime)
{
    bool ok = true;
    bool hasMore = true;
      
    while (hasMore)
    {
        if (state_ == kExpectRequestLine)
        {
          const char* crlf = buf->findCRLF();
          if (crlf)
          {
            // GET /query?name=csdn HTTP/1.1解析地址
            ok = processRequestLine(buf->peek(), crlf);
            if (ok)
            {
              request_.setReceiveTime(receiveTime);
              buf->retrieveUntil(crlf + 2);
              state_ = kExpectHeaders;
            }
            else
            {
              hasMore = false;
            }
          }
          else
          {
            hasMore = false;
          }
        }
        else if (state_ == kExpectHeaders)
        {
          const char* crlf = buf->findCRLF();
          if (crlf)
          {
            const char* colon = std::find(buf->peek(), crlf, ':');
            if (colon != crlf)
            {
              // 解析冒号后面的东西 text/html; charset=iso-8859-1，也就是访问Content-Type
              request_.addHeader(buf->peek(), colon, crlf);
            }
            else
            {
              // empty line, end of header
              // FIXME:
              state_ = kGotAll;
              hasMore = false;
            }
            buf->retrieveUntil(crlf + 2);
          }
          else
          {
            hasMore = false;
          }
        }
        else if (state_ == kExpectBody)
        {
          // FIXME:
        }
    }
    return ok;
}