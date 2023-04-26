# webbench

1）首先在执行：wget http://home.tiscali.cz/~cz210552/distfiles/webbench-1.5.tar.gz

2）然后解压：tar zxvf webbench-1.5.tar.gz

3）进入webbench-1.5，然后编译webbench。

4）make && make install



安装成功检测：

![image-20230423200057456](https://gitee.com/moni_world/pic_bed/raw/master/img/image-20230423200057456.png)

```bash
which webbench
```



## 运行

```bash
 webbench -c 10000 -t 10 -2 http://127.0.0.1:8000/     
```

-c clients

-t times

-2 http11



### 01 webbench的原理

Webbench 首先 fork 出多个子进程，每个子进程都循环做 web 访问测试。子进程把访问的结果通过pipe 告诉父进程，父进程做最终的统计结果。

根据多线程性能的分析（原文章链接：https://blog.csdn.net/pangzhaowen/article/details/106141365?spm=1001.2014.3001.5506）



> **线程等待时间所占比例越高，需要越多线程；线程CPU时间所占比例越高，需要越少线程。**

那么webbench仅仅是访问，并不是IO密集型计算，所以多线程更能发挥性能。

### 02 webbench测试

性能测试，使用webbench工具，对简单的静态http服务器进行访问；

webbench 10000 个并发连接，对单线程服务器muduo进行30s的测试

```bash
webbench -c 10000 -t 30 -2 http://127.0.0.1:8000/
```

![image-20230423214024832](https://gitee.com/moni_world/pic_bed/raw/master/img/image-20230423214024832.png)

有一个错误，说明单线程的负载勉强达到10000，性能不太如意，也许是CPU的问题，所以此时可以选择多线程再进行测试。

```bash
 webbench -c 20000 -t 10 -2 http://127.0.0.1:8000/
```

在开启8个线程以后，明显感觉性能得到提升；

![image-20230423214603797](https://gitee.com/moni_world/pic_bed/raw/master/img/image-20230423214603797.png)

即使是20000并发连接，也不会出现问题了



在开启4个线程时，性能得到了进一步提升

![image-20230423214901262](https://gitee.com/moni_world/pic_bed/raw/master/img/image-20230423214901262.png)

测试链接数为30000也仅有少量错误，但是速度明显提升很大。

原因猜测是因为该linux系统内核设置为4，所以速度更快，但在处理并发连接数时，可能没有那么的有优势。



### 03 性能分析

单线程：

![image-20230423215945585](https://gitee.com/moni_world/pic_bed/raw/master/img/image-20230423215945585.png)

多线程（4个）：

![image-20230423220001356](https://gitee.com/moni_world/pic_bed/raw/master/img/image-20230423220001356.png)



对比两图，可以看出，单线程的速度和QPS几乎只是多线程情况下的一半，但是可能是因为测试时间过短地原因，单线程并没有出现错误；

此时将时间调制30s：

![image-20230423220636923](https://gitee.com/moni_world/pic_bed/raw/master/img/image-20230423220636923.png)

单线程果然出现了错误，根据前面的分析，对于webbench，线程越多理应更快。

那么对多线程（4）进行测试：

![image-20230423221026630](https://gitee.com/moni_world/pic_bed/raw/master/img/image-20230423221026630.png)

结果是，虽然QPS提升了非常多，两倍有余，但是错误数也非常明显的有提升，也许是因为CPU核数的问题，我的WSL是4核的linux系统，如果换成8核也许会不一样？

再对多线程（12）进行测试：

![image-20230423221451768](https://gitee.com/moni_world/pic_bed/raw/master/img/image-20230423221451768.png)

此时发现，QPS提高更多，但是很神奇的是连接失败数居然减少了！继续增加线程数来试试：

24线程：

![image-20230423221821167](https://gitee.com/moni_world/pic_bed/raw/master/img/image-20230423221821167.png)

### 疑问（尚未解决，希望各位大佬能提供思路或者更好的测试方法）



为什么线程越多，会让QPS提高很多，但并不能提高并发连接数呢（30000连接无论如何都跑不通）？

webbench到底是IO密集型还是CPU密集型的请求呢？

4核CPU情况开多少线程最能发挥出CPU的性能呢？（引申为n核CPU开多少线程最能发挥CPU的性能）。

