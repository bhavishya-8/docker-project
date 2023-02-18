FROM centos:7
RUN yum -y update && \
    yum -y install httpd && \
    yum clean all
COPY index.html /var/www/html/
EXPOSE 8080
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
