FROM          node 
COPY          node_modules/ node_modules/
COPY          server.js .
COPY          package.json package.json
# ADD         Download the pem file
ENTRYPOINT    [ "node" , "server.js" ]
