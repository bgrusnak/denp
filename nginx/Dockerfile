FROM nginx

ADD proxy.conf /etc/nginx/conf.d/proxy.conf
ADD run.sh ./

EXPOSE 80
EXPOSE 443

CMD sh run.sh