FROM ubuntu:14.04

RUN apt-get update

RUN apt-get install -y createrepo
RUN apt-get install -y python-pip
RUN apt-get install -y groff

RUN pip install awscli

ADD run.sh /run.sh

CMD ["/run.sh"]
