FROM holbertonschool/ubuntu-1404-fabric3
MAINTAINER Guillaume Salva <guillaume@holbertonschool.com>

ADD run.sh /etc/sandbox_run.sh
RUN chmod u+x /etc/sandbox_run.sh

# start run!
CMD ["./etc/sandbox_run.sh"]
