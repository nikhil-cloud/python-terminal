FROM ubuntu:xenial
 RUN apt-get update -y && apt-get install shellinabox openssl ssh -y
 RUN apt-get install python -y
 RUN echo "shellinabox:password" | chpasswd
 EXPOSE 4200
 CMD ["shellinaboxd", "-t", "-s", "/:root:root:/:/usr/bin/python", "--css", "/etc/shellinabox/options-available/00_White On Black.css"]
