# TinyNetwork

主要是参照muduo网络库搭建的网络库。使用C++作为开发语言，Reactor模式作为基本框架，linux作为开发平台，核心是一个事件循环（EventLoop），用于响应事件和定时器。

开发目的在于减小网络库开发的难度，减少网络开发中的错误，并提高大并发情况下的速度（多线程）。



## 环境

WSL（windows自带ubuntu）

需要下载Cmake，g++， make，~~boost库~~完全移除boost库依赖，原因是服务器上配置环境确实恶心。



## 编译

运行Example仅需要运行自带的build文件。

```bash
./build.sh
```



## 运行

```bash
./build/bin/httpserver_test
```

出现如下信息提示则可以在浏览器中打开该网址了（类似于java的Tomcat）。

![image-20230425184922855](https://gitee.com/moni_world/pic_bed/raw/master/img/image-20230425184922855.png)


```bash
http://localhost:8000/
```

![image](https://github.com/monifeng/tinyNetwork/assets/70735887/d5f98a68-ea7b-4a52-afff-96e714eb0232)



## TODO

- [ ] 替换一个更高效的日志系统；
- [ ] 连接数据库；
