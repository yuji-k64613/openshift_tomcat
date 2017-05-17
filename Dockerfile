FROM tomcat:8.0.43-jre8
RUN apt-get update \
  && apt-get install -y git
#ADD script.sh /tmp/script.sh
#CMD /bin/bash -c "/tmp/script.sh && catalina.sh run"
WORKDIR /tmp
ARG CACHEBUST=1
RUN git clone https://github.com/yuji-k64613/workspace.git
RUN cp /tmp/workspace/sample.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]
