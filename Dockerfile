FROM duluca/minimal-node-build-env:8.9.4

RUN mkdir -p /usr/src
WORKDIR /usr/src

COPY server .

RUN npm install

CMD ["node", "index"]