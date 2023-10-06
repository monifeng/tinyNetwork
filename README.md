# TinyNetwork

主要是参照muduo网络库搭建的网络库。使用C++作为开发语言，Reactor模式作为基本框架，linux作为开发平台，核心是一个事件循环（EventLoop），用于响应事件和定时器。

开发目的在于减小网络库开发的难度，减少网络开发中的错误，并提高大并发情况下的速度（多线程）。



## 环境

WSL（windows自带ubuntu）

虚拟机信息：

```bash
$ uname -a
Linux Moni 5.15.90.1-microsoft-standard-WSL2 #1 SMP x86_64 x86_64 x86_64 GNU/Linux
```

linux信息：

```bash
$ lsb_release -a
No LSB modules are available.
Distributor ID: Ubuntu
Description:    Ubuntu 22.04.1 LTS
Release:        22.04
Codename:       jammy
```

需要下载Cmake，g++， make，boost库（暂未移除boost库，原因是依赖比我想象的要深，在非常底层的地方使用了boost库，一经修改，全盘皆崩，而且boost库是一个比较常用的库，理应存在）~~完全移除boost库依赖，原因是服务器上配置环境确实恶心。~~



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





### 文件服务器

编译过程与上文相同，启动流程：

```bash
./build/bin/file_server
```

效果展示：

![image-20231006230426932](https://gitee.com/moni_world/pic_bed/raw/master/img/20231006232047.png)

暂未完全做好，有不少地方需要更改优化，目前遇到了一些难题，例如传输大文件和原则上背道相驰了，原则上的三个半事件很难用某个单独的事件来概括（连接建立，可读，可写，完成）；

还需要一定时间来构思完善这个功能，后续打算是去研究一下linux的curl是如何实现文件的上传下载的；

## TODO

- [x] 增加一个静态文件服务器；

- [ ] 替换一个更高效的日志系统；
- [ ] 连接数据库；
