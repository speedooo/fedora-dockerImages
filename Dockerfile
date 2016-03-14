FROM fedora

#ENV http_proxy "http://wlgproxyforservers:8080/"
#ENV https_proxy "http://wlgproxyforservers:8080/"

#RUN echo "proxy=http://wlgproxyforservers:8080" >> /etc/dnf/dnf.conf

RUN dnf -y update; dnf clean all
RUN dnf -y install mongodb-server; dnf clean all

# -v /host/mongodb:/data/db in your command
VOLUME ["/data/db"]
WORKDIR /data

EXPOSE 27017

ENTRYPOINT ["/usr/bin/mongod"]
