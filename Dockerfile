FROM ubuntu:latest
LABEL "Author"="Jabir"
LABEL "Project"="Samplehtml"
RUN apt update && apt install wget zip unzip -y
RUN apt install apache2 -y
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
WORKDIR /var/www/html
RUN rm -rf /var/www/html/*
RUN wget https://www.tooplate.com/zip-templates/2131_wedding_lite.zip
RUN unzip 2131_wedding_lite.zip
RUN cp -r 2131_wedding_lite/* /var/www/html/
