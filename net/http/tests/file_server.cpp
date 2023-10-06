#include "../HttpServer.h"
#include "../HttpRequest.h"
#include "../HttpResponse.h"
#include "../../../net/EventLoop.h"
#include "../../../base/Logging.h"

#include <dirent.h>
#include <sys/stat.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <sys/sendfile.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/fcntl.h>

#include <vector>
#include <iostream>
#include <fstream>
#include <map>
#include <cstdio>

using namespace tnet;
using namespace tnet::net;

typedef std::shared_ptr<FILE> FilePtr;

const int kBufSize = 64*1024;
const char* g_file = NULL;
extern char favicon[555];

bool benchmark = false;
int cur_sentlen = 0;

void getFileListPage(std::string &fileListHtml);
void getFileVec(const std::string dirName, std::vector<std::string> &resVec);

void onRequest(const HttpRequest& req, HttpResponse* resp)
{
    std::cout << "Headers  " << req.methodString() << " " << req.path() << std::endl;
    if (!benchmark)
    {
        const std::map<string, string>& headers = req.headers();
        for (const auto& header : headers)
        {
            std::cout << header.first << ": " << header.second << std::endl;
        }
    }

    if (req.path() == "/")
    {
        resp->setStatusCode(HttpResponse::k200Ok);
        resp->setStatusMessage("OK");
        resp->setContentType("text/html");
        resp->addHeader("Server", "tnet");
        std::string msg_body;
        getFileListPage(msg_body);
        resp->setBody(msg_body);
    }
    else
    {
        std::string all_path, opera, filename;
        all_path = req.path();
        int i = 0;
        while(i < all_path.size() && all_path[i] != '/')
        {
            i ++;
        }
        if(i < all_path.size() - 1){
            opera = all_path.substr(1, i - 1);
            filename = all_path.substr(i+1);
        }
        else
        {
            opera = "redirect";
        }

        // 根据opera来执行相应的操作
        if(opera == "download")
        {
            resp->setStatusCode(HttpResponse::k200Ok);
            int file_fd = open(("net/http/tests/filedir/" + filename).c_str(), O_RDONLY);
            // 重定向
            if(file_fd == -1)
            {
                LOG_WARN << "文件打开失败.";
                resp->setStatusCode(HttpResponse::k200Ok);
                resp->setStatusMessage("OK");
                resp->setContentType("text/html");
                resp->addHeader("Server", "tnet");
                std::string msg_body;
                getFileListPage(msg_body);
                resp->setBody(msg_body);
            }
            else
            {
                struct stat fileStat;
                fstat(file_fd, &fileStat);

                // 长度为long long,不知道会不会爆
                // long long msgLen = fileStat.st_size;
                // int client_fd;
                // int sent_tag = cur_sentlen;
                // FIXME：大文件也许不可用？
                // int sentLen = sendfile(client_fd, file_fd, (off_t *)&cur_sentlen, msgLen);

                // FILE* fp = ::fopen(("net/http/tests/filedir/" + filename).c_str(), "rb");
                // if (fp)
                // {
                //     FilePtr ctx(fp, ::fclose);
                //     char buf[kBufSize];
                //     size_t nread = ::fread(buf, 1, sizeof buf, fp);
                // }

                resp->setStatusCode(HttpResponse::k200Ok);
                resp->setStatusMessage("OK");
                // 流文件下载
                resp->setContentType("application/octet-stream");
                resp->addHeader("Server", "tnet");
                LOG_INFO << filename << "下载文件消息头已写入，请等待后续...";
            }
        }
        else if(opera == "delete") // 删除操作
        {
            // 本地直接删除
            int ret = remove(("net/http/tests/filedir/" + filename).c_str());
            if (ret != 0)
            {
                LOG_WARN << filename << " 删除失败.";
            }
            else LOG_INFO << filename << " 删除成功.";
        }
        else // 重定向
        {
            resp->setStatusCode(HttpResponse::k200Ok);
            resp->setStatusMessage("OK");
            resp->setContentType("text/html");
            resp->addHeader("Server", "tnet");
            std::string msg_body;
            getFileListPage(msg_body);
            resp->setBody(msg_body);
        }

        resp->setStatusCode(HttpResponse::k200Ok);
        resp->setStatusMessage("OK");
        resp->setContentType("text/html");
        resp->addHeader("Server", "tnet");
        std::string msg_body;
        getFileListPage(msg_body);
        resp->setBody(msg_body);
    }
}

void getFileListPage(std::string &fileListHtml){
    // 结果保存到 fileListHtml

    // 将指定目录内的所有文件保存到 fileVec 中
    std::vector<std::string> fileVec;
    getFileVec("net/http/tests/filedir", fileVec);
    
    // 构建页面
    // 不知道为什么只能使用绝对路径
    std::ifstream fileListStream("net/http/tests/filelist.html", std::ios::in);
    std::string tempLine;
    // 首先读取文件列表的 <!--filelist_label--> 注释前的语句
    LOG_INFO << "begin read filelist.html";
    
    while(1){
        getline(fileListStream, tempLine);
        if(tempLine == "<!--filelist_label-->"){
            break;
        }
        fileListHtml += tempLine + "\n";
    }

    // 根据如下标签，将将文件夹中的所有文件项添加到返回页面中
    //             <tr><td class="col1">filenamename</td> <td class="col2"><a href="file/filename">下载</a></td> <td class="col3"><a href="delete/filename">删除</a></td></tr>
    for(const auto &filename : fileVec){
        fileListHtml += "            <tr><td class=\"col1\">" + filename +
                    "</td> <td class=\"col2\"><a href=\"download/" + filename +
                    "\">下载</a></td> <td class=\"col3\"><a href=\"delete/" + filename +
                    "\" onclick=\"return confirmDelete();\">删除</a></td></tr>" + "\n";
    }

    // 将文件列表注释后的语句加入后面
    while(getline(fileListStream, tempLine)){
        fileListHtml += tempLine + "\n";
    }

}

void getFileVec(const std::string dirName, std::vector<std::string> &resVec){
    // 使用 dirent 获取文件目录下的所有文件
    DIR *dir;   // 目录指针
    dir = opendir(dirName.c_str());
    LOG_INFO << "begin getFileVec: " << dirName;
    struct dirent *stdinfo;
    while (1)
    {
        // 获取文件夹中的一个文件
        stdinfo = readdir(dir);

        if (stdinfo == nullptr){
            break;
        }
        resVec.push_back(stdinfo->d_name);
        if(resVec.back() == "." || resVec.back() == ".."){
            resVec.pop_back();
        }
    }
}

int main(int argc, char* argv[])
{
    int numThreads = 0;
    if (argc > 1)
    {
        benchmark = true;
        Logger::setLogLevel(Logger::WARN);
        numThreads = atoi(argv[1]);
    }

    EventLoop loop;
    HttpServer server(&loop, InetAddress(8000), "dummy");
    server.setHttpCallback(onRequest);
    server.setThreadNum(numThreads);
    server.start();
    loop.loop();
}

char favicon[555] = {
  '\x89', 'P', 'N', 'G', '\xD', '\xA', '\x1A', '\xA',
  '\x0', '\x0', '\x0', '\xD', 'I', 'H', 'D', 'R',
  '\x0', '\x0', '\x0', '\x10', '\x0', '\x0', '\x0', '\x10',
  '\x8', '\x6', '\x0', '\x0', '\x0', '\x1F', '\xF3', '\xFF',
  'a', '\x0', '\x0', '\x0', '\x19', 't', 'E', 'X',
  't', 'S', 'o', 'f', 't', 'w', 'a', 'r',
  'e', '\x0', 'A', 'd', 'o', 'b', 'e', '\x20',
  'I', 'm', 'a', 'g', 'e', 'R', 'e', 'a',
  'd', 'y', 'q', '\xC9', 'e', '\x3C', '\x0', '\x0',
  '\x1', '\xCD', 'I', 'D', 'A', 'T', 'x', '\xDA',
  '\x94', '\x93', '9', 'H', '\x3', 'A', '\x14', '\x86',
  '\xFF', '\x5D', 'b', '\xA7', '\x4', 'R', '\xC4', 'm',
  '\x22', '\x1E', '\xA0', 'F', '\x24', '\x8', '\x16', '\x16',
  'v', '\xA', '6', '\xBA', 'J', '\x9A', '\x80', '\x8',
  'A', '\xB4', 'q', '\x85', 'X', '\x89', 'G', '\xB0',
  'I', '\xA9', 'Q', '\x24', '\xCD', '\xA6', '\x8', '\xA4',
  'H', 'c', '\x91', 'B', '\xB', '\xAF', 'V', '\xC1',
  'F', '\xB4', '\x15', '\xCF', '\x22', 'X', '\x98', '\xB',
  'T', 'H', '\x8A', 'd', '\x93', '\x8D', '\xFB', 'F',
  'g', '\xC9', '\x1A', '\x14', '\x7D', '\xF0', 'f', 'v',
  'f', '\xDF', '\x7C', '\xEF', '\xE7', 'g', 'F', '\xA8',
  '\xD5', 'j', 'H', '\x24', '\x12', '\x2A', '\x0', '\x5',
  '\xBF', 'G', '\xD4', '\xEF', '\xF7', '\x2F', '6', '\xEC',
  '\x12', '\x20', '\x1E', '\x8F', '\xD7', '\xAA', '\xD5', '\xEA',
  '\xAF', 'I', '5', 'F', '\xAA', 'T', '\x5F', '\x9F',
  '\x22', 'A', '\x2A', '\x95', '\xA', '\x83', '\xE5', 'r',
  '9', 'd', '\xB3', 'Y', '\x96', '\x99', 'L', '\x6',
  '\xE9', 't', '\x9A', '\x25', '\x85', '\x2C', '\xCB', 'T',
  '\xA7', '\xC4', 'b', '1', '\xB5', '\x5E', '\x0', '\x3',
  'h', '\x9A', '\xC6', '\x16', '\x82', '\x20', 'X', 'R',
  '\x14', 'E', '6', 'S', '\x94', '\xCB', 'e', 'x',
  '\xBD', '\x5E', '\xAA', 'U', 'T', '\x23', 'L', '\xC0',
  '\xE0', '\xE2', '\xC1', '\x8F', '\x0', '\x9E', '\xBC', '\x9',
  'A', '\x7C', '\x3E', '\x1F', '\x83', 'D', '\x22', '\x11',
  '\xD5', 'T', '\x40', '\x3F', '8', '\x80', 'w', '\xE5',
  '3', '\x7', '\xB8', '\x5C', '\x2E', 'H', '\x92', '\x4',
  '\x87', '\xC3', '\x81', '\x40', '\x20', '\x40', 'g', '\x98',
  '\xE9', '6', '\x1A', '\xA6', 'g', '\x15', '\x4', '\xE3',
  '\xD7', '\xC8', '\xBD', '\x15', '\xE1', 'i', '\xB7', 'C',
  '\xAB', '\xEA', 'x', '\x2F', 'j', 'X', '\x92', '\xBB',
  '\x18', '\x20', '\x9F', '\xCF', '3', '\xC3', '\xB8', '\xE9',
  'N', '\xA7', '\xD3', 'l', 'J', '\x0', 'i', '6',
  '\x7C', '\x8E', '\xE1', '\xFE', 'V', '\x84', '\xE7', '\x3C',
  '\x9F', 'r', '\x2B', '\x3A', 'B', '\x7B', '7', 'f',
  'w', '\xAE', '\x8E', '\xE', '\xF3', '\xBD', 'R', '\xA9',
  'd', '\x2', 'B', '\xAF', '\x85', '2', 'f', 'F',
  '\xBA', '\xC', '\xD9', '\x9F', '\x1D', '\x9A', 'l', '\x22',
  '\xE6', '\xC7', '\x3A', '\x2C', '\x80', '\xEF', '\xC1', '\x15',
  '\x90', '\x7', '\x93', '\xA2', '\x28', '\xA0', 'S', 'j',
  '\xB1', '\xB8', '\xDF', '\x29', '5', 'C', '\xE', '\x3F',
  'X', '\xFC', '\x98', '\xDA', 'y', 'j', 'P', '\x40',
  '\x0', '\x87', '\xAE', '\x1B', '\x17', 'B', '\xB4', '\x3A',
  '\x3F', '\xBE', 'y', '\xC7', '\xA', '\x26', '\xB6', '\xEE',
  '\xD9', '\x9A', '\x60', '\x14', '\x93', '\xDB', '\x8F', '\xD',
  '\xA', '\x2E', '\xE9', '\x23', '\x95', '\x29', 'X', '\x0',
  '\x27', '\xEB', 'n', 'V', 'p', '\xBC', '\xD6', '\xCB',
  '\xD6', 'G', '\xAB', '\x3D', 'l', '\x7D', '\xB8', '\xD2',
  '\xDD', '\xA0', '\x60', '\x83', '\xBA', '\xEF', '\x5F', '\xA4',
  '\xEA', '\xCC', '\x2', 'N', '\xAE', '\x5E', 'p', '\x1A',
  '\xEC', '\xB3', '\x40', '9', '\xAC', '\xFE', '\xF2', '\x91',
  '\x89', 'g', '\x91', '\x85', '\x21', '\xA8', '\x87', '\xB7',
  'X', '\x7E', '\x7E', '\x85', '\xBB', '\xCD', 'N', 'N',
  'b', 't', '\x40', '\xFA', '\x93', '\x89', '\xEC', '\x1E',
  '\xEC', '\x86', '\x2', 'H', '\x26', '\x93', '\xD0', 'u',
  '\x1D', '\x7F', '\x9', '2', '\x95', '\xBF', '\x1F', '\xDB',
  '\xD7', 'c', '\x8A', '\x1A', '\xF7', '\x5C', '\xC1', '\xFF',
  '\x22', 'J', '\xC3', '\x87', '\x0', '\x3', '\x0', 'K',
  '\xBB', '\xF8', '\xD6', '\x2A', 'v', '\x98', 'I', '\x0',
  '\x0', '\x0', '\x0', 'I', 'E', 'N', 'D', '\xAE',
  'B', '\x60', '\x82',
};

