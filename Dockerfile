FROM 1221-domain
COPY container-scripts/* /u01/oracle/
RUN wlst /u01/oracle/app-deploy.py
#ENV APP_PKG_LOCATION="/u01/oracle"


# Copy files and deploy application in WLST Offline mode
#COPY container-scripts/* /u01/oracle/
#COPY EnterpriseHelloWorld.ear /u01/oracle/
#COPY app-deploy.py /u01/oracle/app-deploy.py
#RUN wlst /u01/oracle/app-deploy.py


#RUN sed -i '$a java weblogic.Deployer -adminurl t3://127.0.0.1:7001 -username weblogic -password welcome1 -name mytestear -targets base_domain -stage  -deploy /u01/oracle/EnterpriseHelloWorld.ear' /u01/oracle/user_projects/domains/base_domain/startWebLogic.sh
#ADD entrypoint.sh /u01/orcale/entrypoint.sh
#ENTRYPOINT sh /u01/orcale/entrypoint.sh
#RUN sh /u01/oracle/user_projects/domains/base_domain/startWebLogic.sh &
#RUN java weblogic.Deployer -adminurl t3://localhost:7001  -username weblogic -password welcome1 -deploy -name warfilename -targets base_domain -source /u01/oracle/gradle-java-ear.ear
#RUN java weblogic.Deployer -adminurl t3://127.0.0.1:7001 -username weblogic -password welcome1 -deploy /u01/oracle/gradle-java-ear/libs/gradle-java-ear.ear
#RUN wlst /u01/oracle/app-deploy.py

#java weblogic.Deployer -adminurl t3://127.0.0.1:7001 -username weblogic -password welcome1 -name mytestear -stage  -deploy /u01/oracle/gradle-java-ear/libs/gradle-java-ear.ear
