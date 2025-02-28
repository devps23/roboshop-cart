FROM        docker.io/node
RUN         apt-get install unzip -y
RUN         mkdir /app
WORKDIR     /tmp
ADD         https://roboshop-artifacts.s3.amazonaws.com/cart.zip /tmp/cart.zip
WORKDIR     /app
RUN         unzip /tmp/cart.zip /app
RUN         npm install
COPY        run.sh /
ENTRYPOINT  ["bash","/run.sh"]