FROM node:12.18.1

RUN npm install -g @angular/cli@1.5.5 \
     && mkdir -p /usr/src/iiht-yaksha

WORKDIR /home/node/iiht-yaksha

ADD . /usr/src/iiht-yaksha

RUN npm install && ng build

EXPOSE 80

CMD node server.js $HOSTNAME
