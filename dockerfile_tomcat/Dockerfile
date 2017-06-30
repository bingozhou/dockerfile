FROM centos
MAINTAINER bingozhouy@qq.com
COPY Shanghai /etc/localtime
ADD jdk-7u80-x64.tar.gz /usr/local
ADD apache-tomcat-7.0.78.tar.gz /usr/local
RUN mv /usr/local/apache-tomcat-7.0.78 /usr/local/tomcat
ENV JAVA_OPTS "$JAVA_OPTS -Duser.timezone=Asia/shanghai"
ENV CATALINA_HOME /usr/local/tomcat
ENV JAVA_HOME /usr/local/jdk1.7.0_80
EXPOSE 8080
ENV PATH $PATH:$JAVA_HOME/bin:$CATALINA_HOME/bin
CMD ["/usr/local/tomcat/bin/catalina.sh","run"]
