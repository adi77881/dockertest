FROM centos:latest

MAINTAINER aditya <adi77881@gmail.com>

RUN yum update -y 

RUN yum install httpd -y

RUN yum install php -y

RUN yum install php-common -y

RUN yum install php-mysql -y

RUN yum install php-gd -y

RUN yum install php-xml -y

RUN yum install php-mbstring -y


RUN yum install wget -y

WORKDIR "/var/www/html"

RUN wget http://wordpress.org/latest.tar.gz

RUN tar -xvzf latest.tar.gz

RUN rm latest.tar.gz

WORKDIR "/var/www/html/wordpress"

RUN sed -ie 's/database_name_here/wpuserdb/g' wp-config-sample.php

RUN sed -ie 's/username_here/wpuser/g' wp-config-sample.php

RUN sed -ie 's/password_here/password/g' wp-config-sample.php

RUN sed -ie 's/localhost/wpuserdb.cjt7uym7tyx4.us-east-1.rds.amazonaws.com/g' wp-config-sample.php

