FROM duluca/minimal-node-build-env:lts-alpine

RUN mkdir -p /usr/src
WORKDIR /usr/src

COPY server .

RUN npm ci

CMD ["node", "index"]