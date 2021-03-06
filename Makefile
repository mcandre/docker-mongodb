IMAGE=mcandre/docker-mongodb:latest

all: run

build: Dockerfile
	docker build -t $(IMAGE) .

run: clean-containers build
	$(eval CONTAINER=$(shell docker run -d -p 27017:27017 $(IMAGE)))
	docker exec $(CONTAINER) mongo --eval 'db.animals.insert({ "name": "cat" })'
	docker exec $(CONTAINER) mongo --eval 'db.animals.find().forEach(function (result) { printjson(result); })'

clean-containers:
	-docker ps -a | grep -v IMAGE | awk '{ print $$1 }' | xargs docker rm -f

clean-images:
	-docker images | grep -v IMAGE | grep $(IMAGE) | awk '{ print $$3 }' | xargs docker rmi -f

clean-layers:
	-docker images | grep -v IMAGE | grep none | awk '{ print $$3 }' | xargs docker rmi -f

clean: clean-containers clean-images clean-layers

foodcritic:
	foodcritic cookbook/

editorconfig:
	flcl . | xargs -n 100 editorconfig-cli check

dockerlint:
	$(shell npm bin)/dockerlint

lint: foodcritic editorconfig dockerlint

publish:
	docker push $(IMAGE)
