FROM strongloop/strong-pm:node-4
MAINTAINER Pham Cong Toan <toan.pham@monokera.com>

USER root
RUN npm install --global \
    strongloop \
    yarn \
    && npm cache clear \
    && sl-pm-install

WORKDIR /usr/app
