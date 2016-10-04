FROM centos:centos7

# Install shadowsocks
RUN yum install python-setuptools -y
RUN easy_install pip
RUN pip install shadowsocks

EXPOSE 443
ENV SS_PASSWD=
CMD ["ssserver","-p","443","-k",'${SS_PASSWD}',"-m","aes-256-cfb"]
