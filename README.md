# ee629


# Dockerizing Mopidy

[Mopidy](https://mopidy.com/ "Mopidy Homepage") is a music server written in Python, it is used in the [Pi MusicBox Project](https://www.pimusicbox.com/ "Pi MusicBox Homepage"). To use Pi MuiscBox you must flash the SD card of you Raspberry Pi with their software and it boots as a music server. If you do not have multiple SD cards, or you want to easily run your music server in the cloud, you need a new approach. That is the motivation for this project, to package Mopidy and a Web-Interface into a convinient Docker container.

### Prerequisites

Make sure that you have [Docker installed](https://docs.docker.com/get-docker/ "Get Docker") continuing!


### Installing

There is no image on Docker Hub yet, but you can use this repository to build the image. 

```
git clone https://github.com/lpasquar/ee629.git
```

```
cd ee629
```
Now, copy your music files into the media folder and build the image using the following command. 

```
docker build .
```
Once the image is complete, list your docker images.
```
docker images
```

You can [change the image tag](https://docs.docker.com/engine/reference/commandline/tag/ "docker tag documentation") by running this command.
```
docker tag SOURCE_IMAGE[:TAG] TARGET_IMAGE[:TAG]
```
The `docker_run.sh` script is looking for an image with the name "mopidy_container"

You can edit the script and give the image any tag you'd like, if you prefer. 

Finally, go into the `scriptsAndConfig` directory and execute the run script.
```
./docker_run.sh
```
You should be able to see your container running by entering `docker ps` into your shell.

Now, on any device connected to the same network as your host machine, you can connect to your host machine's IP address at port 6680 to play music!

The host machine can be connected to a speaker system and anyone with access to your Wi-Fi network can queue up songs. 

## Acknowledgments
* This Project was inspired by the [Docerized version of PiHole](https://github.com/pi-hole/docker-pi-hole "dockerized pi-hole GitHub")