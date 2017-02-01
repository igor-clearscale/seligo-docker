FROM openweb/oracle-tomcat

RUN apt-get update && apt-get -y dist-upgrade
ENV LANG en_US.UTF-8
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
ENV JRE_HOME /usr/lib/jvm/java-8-oracle
ENV CATALINA_HOME /usr/local/tomcat

WORKDIR $CATALINA_HOME

RUN rm -rf /usr/local/tomcat/webapps/*

EXPOSE 8080

CMD /bin/bash -c "./bin/catalina.sh run"
                  #while true; do sleep 100; done"

