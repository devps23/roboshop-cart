FROM        docker.io/node:16
RUN         mkdir /app
WORKDIR     /tmp
ADD         https://roboshop-artifacts.s3.amazonaws.com/cart.zip /tmp/cart.zip
WORKDIR     /app
RUN         unzip /tmp/cart.zip -d /app/
RUN         rm -rf /tmp/*
RUN         npm install
COPY        run.sh /
ENTRYPOINT  ["bash","/run.sh"]