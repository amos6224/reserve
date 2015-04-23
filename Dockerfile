# This line is actually pulling a docker version of Ubuntu to run the app
FROM ubuntu:14.04
# Maintainer is to inform of the owner of the build
MAINTAINER 'jeff@namely.com'
# This line will help user to search for this image by the label
LABEL reserve-01.01
# install nginx 
RUN apt-get update && apt-get install nginx -y
# Not to allow nginx to spawn multi processes
RUN echo "daemon off" >>/etc/nginx/nginx.conf
# Inform nginx which port to run of
EXPOSE 80
# allow the service to start on build
CMD service nginx start
