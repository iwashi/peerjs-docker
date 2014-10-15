FROM ubuntu
MAINTAINER Yoshimasa IWASE <iwase.yoshimasa@gmail.com>

#Run echo "now building..."
#CMD ["echo", "now running..."]

RUN apt-get -y update
RUN apt-get install -y nodejs npm
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN npm install -g peer

EXPOSE 9000

CMD ["peerjs", "--port", "9000", "--key", "peerjs"]

