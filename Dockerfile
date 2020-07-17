FROM centos/python-36-centos7
USER root

RUN yum -y install httpd*

ADD ./requirements.txt /tmp/requirements.txt

RUN pip install -r /tmp/requirements.txt -i http://mirrors.aliyun.com/pypi/simple --trusted-host mirrors.aliyun.com \
    && pip install mod_wsgi -i http://mirrors.aliyun.com/pypi/simple --trusted-host mirrors.aliyun.com  \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mod_wsgi-express install-module

ADD ./conf/django.conf /etc/httpd/conf.d/django.conf

EXPOSE 80

WORKDIR /Mxonline3
