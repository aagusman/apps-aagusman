FROM ubuntu/apache2
RUN apt update -y && apt install php libapache2-mod-php -y
ADD ./repo-git /var/www/html
EXPOSE 8085
CMD apachectl -DFOREGROUND 