FROM tomcat:9.0

ADD corpus-frontend-2.1.0.war /usr/local/tomcat/webapps/corpus-frontend.war
COPY corpus-frontend.properties /etc/blacklab/
COPY search.xml /etc/blacklab/projectconfigs/default/

CMD ["catalina.sh", "run"]
