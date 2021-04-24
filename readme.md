# Laclede's Lan Quake 2 Freeplay Server in Docker

![thumb-gamesvr-quake2-freeplay](https://raw.githubusercontent.com/LacledesLAN/gamesvr-quake2-freeplay/main/.misc/thumb-gamesvr-quake2-freeplay.png "thumb-gamesvr-quake2-freeplay")

This repository is maintained by [Laclede's LAN](https://lacledeslan.com). Its contents are heavily tailored and tweaked for use at our charity LAN-Parties. For third-parties we recommend using this repo only as a reference example and then building your own using [gamesvr-quake2](https://github.com/LacledesLAN/gamesvr-quake2) as the base image for your customized server.

## Linux Container

### Download

```shell
docker pull lacledeslan/gamesvr-quake2-freeplay;
```

### Run Self-Tests

The image includes a test script that can be used to verify its contents. No changes or pull-requests will be accepted to this repository if any tests fail.

```shell
docker run --rm lacledeslan/gamesvr-quake2-freeplay ./ll-tests/gamesvr-quake2-freeplay.sh;
```

### Run A Q2Pro Server (Custom Maps)

``` shell
docker run -it --rm --net=host lacledeslan/gamesvr-quake2-freeplay ./q2pro_server_x64 +set dedicated 1 +map q2dm1 +exec server.cfg +rcon_password password +exec custommaps.cfg;
```

### Run A Q2Pro Server (Stock Maps)

``` shell
docker run -it --rm --net=host lacledeslan/gamesvr-quake2-freeplay ./q2pro_server_x64 +set dedicated 1 +map q2dm1 +exec server.cfg +rcon_password password +exec stockmaps.cfg;
```

### Run A Q2Pro Server - CTF Mod (Custom Maps)

``` shell
docker run -it --rm --net=host lacledeslan/gamesvr-quake2-freeplay ./q2pro_server_x64 +set dedicated 1 +game ctf +map q2ctf1 +exec server.cfg +exec customplaylist.cfg
```

### Run A Q2Pro Server - CTF Mod (Stock Maps)

``` shell
docker run -it --rm --net=host lacledeslan/gamesvr-quake2-freeplay ./q2pro_server_x64 +set dedicated 1 +game ctf +map q2ctf1 +exec server.cfg +exec stockplaylist.cfg
```

### Run A Q2Pro Server - Rocket Arena Mod (Stock Maps)

``` shell
docker run -it --rm --net=host lacledeslan/gamesvr-quake2-freeplay ./q2pro_server_x64 +set dedicated 1  +game arena +map ra2map1 +rcon_password password +exec server.cfg
```

## Getting Started with Game Servers in Docker

[Docker](https://docs.docker.com/) is an open-source project that bundles applications into lightweight, portable, self-sufficient containers. For a crash course on running Dockerized game servers check out [Using Docker for Game Servers](https://github.com/LacledesLAN/README.1ST/blob/master/GameServers/DockerAndGameServers.md). For tips, tricks, and recommended tools for working with Laclede's LAN Dockerized game server repos see the guide for [Working with our Game Server Repos](https://github.com/LacledesLAN/README.1ST/blob/master/GameServers/WorkingWithOurRepos.md). You can also browse all of our other Dockerized game servers: [Laclede's LAN Game Servers Directory](https://github.com/LacledesLAN/README.1ST/tree/master/GameServers).
