FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive
WORKDIR /app
COPY . /app

RUN apt-get update \
  && apt-get install gnupg wget tzdata lsb-release -y

RUN apt-get update \
  && apt-get install -y software-properties-common \
  && add-apt-repository universe \
  && apt-get update \
  && apt-get install -y net-tools curl git build-essential python2.7 python-dev libboost-python-dev libjpeg8-dev libjpeg-dev libjpeg-turbo8-dev \
  && apt-get install -y libaio1 libaio-dev libmysqlclient-dev mysql-client
RUN add-apt-repository 'deb http://archive.ubuntu.com/ubuntu bionic main' \
  && apt-get update \
  && apt-get install libgraphicsmagick++-dev python-mysqldb -y 
RUN apt-get install openssl xorg libssl-dev libcurl4-openssl-dev wget libxml2-dev libxslt1-dev -y
RUN apt-get install libtiff5-dev libjpeg8-dev zlib1g-dev libfreetype6-dev liblcms2-dev libwebp-dev tcl8.6-dev tk8.6-dev python-tk -y

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - \
  && apt install nodejs -y
RUN wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz \
  && tar -xvf wkhtmltox-0.12.4_linux-generic-amd64.tar.xz \
  && chown root:root wkhtmltox \
  && mv wkhtmltox /usr/bin/wkhtmltopdf \
  && rm wkhtmltox-0.12.4_linux-generic-amd64.tar.xz
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get update && apt-get install -y \
        python3.7 \
        python3-pip
RUN python3.7 -m pip install pip
RUN apt-get update && apt-get install -y \
        python3-distutils \
        python3-setuptools
RUN python3.7 -m pip install pip --upgrade pip \
  && pip install setuptools \
  && pip install -r requirements.txt

RUN npm install
    
CMD ["node", "server.js"]
EXPOSE 8888
