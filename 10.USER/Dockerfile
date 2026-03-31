FROM almalinux:9
RUN dnf install nginx -y
RUN useradd mani
CMD ["nginx","-g","daemon off;"]
USER mani ##conatiner will run with user "mani" not with root user
