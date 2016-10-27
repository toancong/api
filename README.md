# Base image for api #

Use toancong/api:node-4 based from strongloop/strong-pm:node-4 for stable, without tag mean node:latest depends on strong-pm image.

# Usage #

Docker compose example

  docker-compose.yml

  ``` bash
  version: "2"
  services:
    mongo:
      image: mvertes/alpine-mongo
    rockmongo:
      image: javierjeronimo/rockmongo
      ports:
        - "5020:80"
      depends_on:
        - mongo
      links:
        - mongo
    api:
      image: toancong/api:node-4
      volumes:
        - .:/usr/app
      links:
        - mongo:mongo
      depends_on:
        - mongo
      ports:
        - "3000:3000"
      environment:
        - ENV=dev
      entrypoint: |
        bash -c 'bash -s <<EOF

        sl-pm --base /usr/app --listen 3000
        EOF'
  ```
