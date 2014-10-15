PeerJS Server for docker
====
Build docker image for [PeerJS Server](https://github.com/peers/peerjs-server)

## Usage(on the docker host)
On the docker host,

```
$ sudo docker pull iwashi/peerjs
$ sudo docker run -d -p 9000:9000 iwashi/peerjs
```

## Usage(PeerJS client)
On the client side, HTML/JS file needs to be hosted on the web server 
and needs to contain Peer initialization code such as :

```
var peer = new Peer({
  host: 'IP address of your docker container', 
  port: 9000, 
  key: 'pperjs',
  debug: 3
});
```

see [PeerJS Document](http://peerjs.com/docs/#api) to check detail.
