#!/bin/bash

cd /home/api/pjeterp-restserver/target
java -jar -Dmail.pedido-web.template=$ID_PLANTILLA -Dspring.datasource.url=jdbc:firebirdsql:$IP_FIREBIRD/3050:$DB_FILE?encoding=ISO8859_1 -Dspring.datasource.username=SYSDBA -Dspring.datasource.password=masterkey -Dserver.port=8080 -Dlogging.file=/var/log/pjeterp-restserver.log pjeterp-restserver-*-RELEASE.jar