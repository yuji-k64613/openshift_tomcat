FROM tomcat:8.0.43-jre8
RUN apt-get update \
  && apt-get install -y git
ADD script.sh /tmp/script.sh
#CMD ["/tmp/script.sh", "&&", "catalina.sh", "run"]
CMD /bin/bash -c "/tmp/script.sh && catalina.sh run"
