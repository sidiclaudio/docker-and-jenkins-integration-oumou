FROM centos:7

LABEL maintainer="Your Awesome Teacher" 

RUN yum -y update && yum clean all

RUN yum -y install httpd

COPY index.html /var/www/html/

EXPOSE 80

# Start httpd at container runtime
ENTRYPOINT ["/usr/sbin/httpd"]

# Run entrypoint in the background
CMD ["-D", "FOREGROUND"]
