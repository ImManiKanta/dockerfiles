FROM almalinux:9
RUN dnf install nginx -y
RUN useradd mani

#conatiner will run with user mani not with root user
USER mani 
CMD ["sleep","100"]