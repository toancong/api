FROM strongloop/strong-pm

RUN npm install --global \
    apiconnect \
    git \
    loopback-cli \
    strongloop \
    && npm cache clean

WORKDIR /usr/app
