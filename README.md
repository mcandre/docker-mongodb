# docker-mongodb - a Docker container for MongoDB

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-mongodb/

# EXAMPLE

```
$ make
docker exec bf776ebc5a9d4a8207aeb6f6c43e10bf745e64b87a914ef7c3038eef84689762 mongo --eval 'db.animals.insert({ "name": "cat" })'
MongoDB shell version: 2.4.9
connecting to: test
docker exec bf776ebc5a9d4a8207aeb6f6c43e10bf745e64b87a914ef7c3038eef84689762 mongo --eval 'db.animals.find().forEach(function (result) { printjson(result); })'
MongoDB shell version: 2.4.9
connecting to: test
{ "_id" : ObjectId("5628e1b37db3c11bc2fececb"), "name" : "cat" }
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Optional

* [make](http://www.gnu.org/software/make/)
* [Node.js](https://nodejs.org/en/) (for dockerlint)

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
