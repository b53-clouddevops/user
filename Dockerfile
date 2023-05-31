FROM          node 
COPY          node_modules/ node_modules/
COPY          server.js .
COPY          package.json package.json
RUN           mkdir -p /home/roboshop/
ADD           https://truststore.pki.rds.amazonaws.com/us-east-1/us-east-1-bundle.pem  /home/roboshop/rds-combined-ca-bundle.pem
ENTRYPOINT    [ "node" , "server.js" ]
