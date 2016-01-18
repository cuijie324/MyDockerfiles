
使用Docker构建并测试Web应用程序

跟测试静态网站区别不大

Web应用--》Redis数据库
应用程序也是通过卷挂载在Web容器里的，然后这个容器通过link与Redis容器连接。

docker run -p 4567 --name webapp --link redis:db -t -i -v $PWD/webapp:/opt/webapp cuijie/sinatra /bin/bash
