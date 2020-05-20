From python:3.6

Run apt-get update && apt-get -y install git

WORKDIR /usr/src/app/
RUN git clone https://github.com/mitre/caldera.git --recursive --branch 2.6.6

WORKDIR /usr/src/app/caldera
#RUN ./install.sh
RUN pip install -r requirements.txt
RUN source calderaenv/bin/active

EXPOSE 8888
CMD ["python", "server.py"]