FROM fedora

#ENV http_proxy "http://wlgproxyforservers:8080/"
#ENV https_proxy "http://wlgproxyforservers:8080/"

#RUN echo "proxy=http://wlgproxyforservers:8080" >> /etc/dnf/dnf.conf

RUN curl -L -b "oraclelicense=a" http://download.oracle.com/otn-pub/java/jdk/8u74-b02/jdk-8u74-linux-x64.rpm -o /tmp/jdk-8-linux-x64.rpm
RUN dnf -y install /tmp/jdk-8-linux-x64.rpm

RUN dnf -y update; dnf clean all

RUN rm /tmp/jdk-8-linux-x64.rpm


