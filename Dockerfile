FROM ubuntu:latest
RUN apt-get update ; apt-get install wget zip unzip -y
RUN wget https://dl.google.com/android/repository/platform-tools_r29.0.2-linux.zip -O $
RUN unzip adb.zip
ENV PATH $PATH:/platform-tools
WORKDIR /platform-tools
EXPOSE 5037
