FROM httpd:2.4

RUN apt-get update && apt-get upgrade -y \
    && apt-get clean && apt-get install apt-utils -y

COPY ./index.html /var/www/html/

EXPOSE 80






