FROM wenfengand/python:35

# MAINTAINER
MAINTAINER wenfengand@gmail.com 
# running required command
RUN apt update && \
    apt install nodejs  -y && \
    apt install npm -y && \
    apt install curl -y && \
    npm config set registry https://registry.npm.taobao.org && \
    npm install -g n  &&  \ 
    n v10.16.0 && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb http://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt update &&  \
    apt install yarn -y 

# change dir to /
WORKDIR /
CMD [ "/bin/bash" ]

