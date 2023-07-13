FROM ubuntu:focal
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get full-upgrade -y && apt-get -y dist-upgrade && apt-get -y autoremove
RUN apt-get -y install locales wget openssh-server sudo curl vim bash wget gnupg dialog apt-utils unzip xz-utils build-essential net-tools default-jre nano ubuntu-mate-desktop
RUN wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
RUN wget https://file.cnxiaobai.com/Linux/Java/Oracle%20JDK/JDK%2018/jdk-18_linux-x64_bin.deb
RUN apt-get -y install ./*.deb && rm -rf *.deb

RUN useradd -m -s /bin/bash ubuntu
RUN usermod -append --groups sudo daka
RUN echo "ubuntu:pass1234" | chpasswd
RUN echo "%sudo ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

ENTRYPOINT  /bin/bash
