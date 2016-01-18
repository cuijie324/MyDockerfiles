
使用Docker测试静态网站

将Docker作为本地Web开发环境，要测试的网站代码通过卷加载，这样代码的运行环境跟生产环境一致，而且测试环境的创建很快速简便。
这里最重要的是：测试网站的运行环境，完全是生产环境的真实状态。

docker build -t yinsu/nginx .
docker run -d -p 80 --name website -v $PWD/website:/var/www/html/website yinsu/nginx nginx
-v：将源目录挂载到容器内的目的目录
