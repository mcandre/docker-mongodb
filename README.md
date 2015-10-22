# docker-mongodb - a Docker container for MongoDB

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-mongodb/

# EXAMPLE

```
$ make
docker exec beeed15573c95d15bb3d9ca151cd45444e50bbe02ffc03f207072d64e0f46a53 mongo --eval 'db.animals.insert({ "name": "cat" })'
MongoDB shell version: 2.4.9
connecting to: test
docker exec beeed15573c95d15bb3d9ca151cd45444e50bbe02ffc03f207072d64e0f46a53 mongo --eval 'db.animals.find().forEach(function (result) { printjson(result); })'
MongoDB shell version: 2.4.9
connecting to: test
{ "_id" : ObjectId("5628e39a261dcf78f0c018d6"), "name" : "cat" }
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Optional

* [make](http://www.gnu.org/software/make/)

## Debian/Ubuntu

```
$ sudo apt-get install docker.io build-essential
```

## RedHat/Fedora/CentOS

```
$ sudo yum install docker-io
```

## non-Linux

* [VirtualBox](https://www.virtualbox.org/)
* [Docker Toolbox](https://www.docker.com/toolbox)

### Mac OS X

* [Xcode](http://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12)
* [Homebrew](http://brew.sh/)
* [brew-cask](http://caskroom.io/)

```
$ brew cask install dockertoolbox
```

### Windows

* [Chocolatey](https://chocolatey.org/)

```
> chocolatey install virtualbox make
```

* [DockerToolbox-1.8.2c.exe](https://github.com/docker/toolbox/releases/download/v1.8.2c/DockerToolbox-1.8.2c.exe)
