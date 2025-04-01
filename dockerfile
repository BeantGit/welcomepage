FROM beants1411987/ubuntu_apache2:v1.0
WORKDIR /tmp/
RUN apt-get update -y
RUN apt-get install apache2 -y;
ADD *.jsp  /var/www/html/
#CMD ["sh", "-c", "/tmp/apache_start.sh;while true; do echo Hello-Container; sleep 5 ; done"]
CMD ["/bin/bash", "-c", "systemctl start apache2;while true; do echo Hello-Container; sleep 5 ; done"]
EXPOSE 80