FROM mcandre/docker-chefdk
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
RUN mkdir /cookbooks
COPY cookbook /cookbooks/cookbook
RUN git config --global user.name name && \
    git config --global user.email user@email.com && \
    sh -c "cd /cookbooks; git init && git add . && git commit -m 'first'"
RUN knife cookbook site install -z mongodb && \
    chef-client -z --runlist 'recipe[cookbook]'
EXPOSE 27017
ENTRYPOINT ["/usr/bin/mongod", "--config", "/etc/mongodb.conf", "run"]
