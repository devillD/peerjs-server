FROM node:alpine
RUN mkdir /peer-server
WORKDIR /peer-server
COPY bin ./bin
COPY dist ./dist
COPY package.json .
RUN npm install --production
EXPOSE 9000
ENTRYPOINT ["node", "bin/peerjs"]
CMD ["bin/peerjs","--port", "9000"]
