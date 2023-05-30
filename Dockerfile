FROM        node 
# npm install should happen on Jenkinsfile and this Dockerfile has to pick those npm_modules
COPY        npm_modules  npm_modules
COPY        server.js   server.js
COPY        package.json package.json
# ADD         Download the pem file
ENTRYPOINT  [ "node" , "server.js" ]
