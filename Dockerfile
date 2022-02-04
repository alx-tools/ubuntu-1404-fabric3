FROM holbertonschool/ubuntu-1404-python3
MAINTAINER Guillaume Salva <guillaume@holbertonschool.com>

RUN apt-get update

# Fabric 3
RUN apt-get install -y libffi-dev
RUN apt-get install -y libssl-dev
RUN apt-get install -y build-essential
RUN apt-get install -y python3.4-dev
RUN apt-get install -y libpython3-dev
RUN pip3 install pyparsing
RUN pip3 install appdirs
RUN pip3 install setuptools==40.1.0
RUN pip3 install cryptography==2.8
RUN pip3 install Fabric3==1.14.post1

ADD run.sh /tmp/run.sh
RUN chmod u+x /tmp/run.sh

# start run!
CMD ["./tmp/run.sh"]
