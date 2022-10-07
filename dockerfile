# from tomcat:8.0
FROM registry.redhat.io/jboss-eap-7/eap74-openjdk11-openshift-rhel8:7.4.7-3

# copy war
COPY   ./MongoDBWebapp/target/MongoDBWebapp.war  /opt/eap/standalone/deployments/

# run
CMD ["/opt/eap/bin/openshift-launch.sh"]
