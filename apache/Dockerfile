FROM alpine:3.17
RUN apk update && apk add apache2 php$phpverx-apache2
RUN rm /var/www/localhost/htdocs/index.html
RUN sed -i 's/Listen 80/Listen 8080/' /etc/apache2/httpd.conf
COPY info.php /var/www/localhost/htdocs/
EXPOSE 8080
CMD ["httpd", "-D", "FOREGROUND"]
