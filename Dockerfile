FROM centos:latest

#change repo
#RUN rpm -ivh http://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

#change timezone and suport chinese 
RUN rm -rf /etc/localtime && ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN yum install -y wget
RUN wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.163.com/.help/CentOS7-Base-163.repo
#RUN yum clean all && yum makecache
RUN yum -y install kde-l10n-Chinese && yum -y reinstall glibc-common
RUN localedef -c -f UTF-8 -i zh_CN zh_CN.utf8
ENV LC_ALL zh_CN.utf8
ENV LANG zh_CN.utf8

#install java
RUN mkdir /usr/java
ADD jdk /usr/java/jdk

#install tomcat
ADD tomcat6 /usr/local/tomcat
 
# Set environment
ENV JAVA_OPTS "$JAVA_OPTS -Duser.timezone=Asia/shanghai"
ENV JAVA_HOME /usr/java/jdk
ENV CATALINA_HOME /usr/local/tomcat
ENV PATH ${PATH}:${JAVA_HOME}/bin:${CATALINA_HOME}/bin

EXPOSE 8080

CMD ["/usr/local/tomcat/bin/catalina.sh","run"]

