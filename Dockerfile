From centos:6

Run yum install -y python35u python35u-libs python35u-devel python35u-pip

WORKDIR /usr/src/app/
RUN git clone https://github.com/mitre/caldera.git --recursive --branch 2.6.6

WORKDIR /usr/src/app/caldera
RUN pip install -r requirements.txt
RUN source calderaenv/bin/active

EXPOSE 8888
CMD ["python", "server.py"]
