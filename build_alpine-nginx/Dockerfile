FROM alpine
MAINTAINER bingozhouy@qq.com


RUN echo "https://mirror.tuna.tsinghua.edu.cn/alpine/v3.6/main" > /etc/apk/repositories

RUN apk update \
    &&  apk add tzdata \
    && cp -r -f /usr/share/zoneinfo/Hongkong /etc/localtime

RUN apk --update add nginx \
    && mkdir -p /run/nginx \
    && mkdir -p /etc/nginx/html \
    && echo "Hello , Welcome to Alpine Ningx !" > /etc/nginx/html/index.html \
    && sed -i '10d' /etc/nginx/conf.d/default.conf \
    && sed -i -e '9a\root \/etc\/nginx\/html;\nindex index.html;' /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx","-g","daemon off;"]
