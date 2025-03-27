FROM             docker.io/node:16
RUN              mkdir /app
COPY            ./ /app/
WORKDIR          /app
RUN              npm install
COPY             run.sh run.sh
ENTRYPOINT       ["bash","run.sh"]