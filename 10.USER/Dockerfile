FROM almalinux:9
RUN dnf install nginx -y
RUN useradd mani

USER mani ##conatiner will run with user "mani" not with root user
CMD ["sleep","100"]
