FROM nginx:1.29.7
RUN rm -f /user/share/nginx/html/index.html  #before copying, remove existing index.html
COPY index.html /user/share/nginx/html/
CMD ["nginx", "-g", "daemon off;"]