FROM mysql
MAINTAINER bingozhouy@qq.com
COPY Shanghai /etc/localtime
ADD  build.cnf /etc/mysql/conf.d/
VOLUME ["/data/bingo/test","/var/lib/mysql"]
EXPOSE 3306
ENV MYSQL_ROOT_PASSWORD root


