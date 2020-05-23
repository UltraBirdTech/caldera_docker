From centos:6

RUN yum install -y https://repo.ius.io/ius-release-el6.rpm
RUN yum install -y python36u python36u-libs python36u-devel python36u-pip

RUN yum install -y git
RUN yum install -y redhat-lsb-core

WORKDIR /usr/src/app/
RUN git clone https://github.com/mitre/caldera.git
WORKDIR /usr/src/app/caldera/

RUN git checkout refs/tags/2.6.6
RUN git submodule update -i

#RUN python3.6 -m pip install --upgrade pip
#RUN python3.6 -m pip install -r requirements.txt
RUN ls -la
RUN ./install.sh

#RUN source calderaenv/bin/active

EXPOSE 8888
CMD ["python", "server.py"]
