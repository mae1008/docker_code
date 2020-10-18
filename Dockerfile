#Step:1 Ubuntu (base image)
FROM ubuntu:latest

#Step:2 Nginx install
RUN apt-get update && apt-get install -y -q nginx

COPY ./index.html /var/www/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
