# SimpleTransmissionServer

Simple Alpine based Transmission server.


## To run a simple server

  ```
docker run -d \
-p "51413:51413" \
-p "9091:9091" \
--name trans \
neiltheblue/simpletransmissionserver
  ```
  
These are the default ports, if you change them you will also need to add an `--expose` option to `docker run`

## Options

To see the available options use:

```
docker run -ti neiltheblue/simpletransmissionserver -h
```

Then you can run with options such as:

```
docker run -d \
-p "51413:51413" \
-p "9091:9091" \
--name trans \
neiltheblue/simpletransmissionserver \
-g /transmission/.config/transmission-daemon
```

## Volumes

To have acces to downloaded files outside of the container mount a volume.

```
docker run -d \
-p "51413:51413" \
-p "9091:9091" \
--name trans \
-v "/transmission/downloads:/root/Downloads" \
neiltheblue/simpletransmissionserver
```

## Config

You can also mount a new config volume and tell Transmission to use this config directory. This is also useful to save the config settings between container instances.

```
docker run -d \
-p "51413:51413" \
-p "9091:9091" \
--name trans \
-v "/transmission-config:/transmission/config" \
neiltheblue/simpletransmissionserver \
-g /transmission/config
```
