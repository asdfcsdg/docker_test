FROM ubuntu
MAINTAINER Matt Evans "mevans@dontemailme.com"
ENV LAST_UPDATED 01-29-2016
LABEL location="The Mountains" type="AB" role="tester setter upper" version="0.0.1"
RUN apt-get update && apt-get install -y nginx
RUN echo "If you're seeing this output - NGINX is working!" > /usr/share/nginx/html/index.html
EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx"]
CMD ["-h"]
