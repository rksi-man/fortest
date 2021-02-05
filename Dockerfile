FROM ubuntu:16.04
RUN apt-get -y update
RUN apt-get -y install apache2
RUN apt-get -y install git
RUN rm /var/www/html/index.html
RUN git clone https://github.com/vlad-kalambet/fortest.git /var/www/html
CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
EXPOSE 80
