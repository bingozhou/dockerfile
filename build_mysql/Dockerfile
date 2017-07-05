FROM mysql
MAINTAINER bingozhouy@qq.com
#COPY Shanghai /etc/localtime
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
ADD  build.cnf /etc/mysql/conf.d/
VOLUME ["/data/bingo/test","/var/lib/mysql"]
EXPOSE 3306
ENV MYSQL_ROOT_PASSWORD root


