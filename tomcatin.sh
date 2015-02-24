#!/bin/bash
# Install tomcat for MSA environment. Run as root
useradd -m msa
tar -zxf apache-tomcat-8.0.14.tar.gz -C /opt/
ln -s /opt/apache-tomcat-8.0.14 /opt/tomcat
cp sqljdbc4* /opt/tomcat/lib/
rpm -i jdk-8u25-linux-x64.rpm 
unzip jce_policy-8.zip
mv UnlimitedJCEPolicyJDK8/local_policy.jar /usr/java/jdk1.8.0_25/jre/lib/security
mv UnlimitedJCEPolicyJDK8/US_export_policy.jar /usr/java/jdk1.8.0_25/jre/lib/security
