FROM python:3.9-slim

RUN apt-get update
RUN apt-get install -y python3-pip python3.11
RUN pip3 install --upgrade pip
RUN pip3 install pipenv

WORKDIR /usr/src/app
RUN useradd jenkins -d /usr/src/app && echo "jenkins:jenkins" | chpasswd
RUN chown -R jenkins:jenkins /usr/src/app

COPY . .

RUN pip3 install -r requirements.txt