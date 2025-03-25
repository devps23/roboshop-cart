FROM        docker.io/node:16
RUN         apt-get update && apt-get install -y wget unzip curl && \
            apt-get clean && rm -rf /var/lib/apt/lists/*
WORKDIR     /tmp
RUN         curl -o /tmp/catalogue.zip https://roboshop-artifacts.s3.amazonaws.com/cart.zip
RUN         mkdir -p app
WORKDIR     /app
RUN         unzip /tmp/cart.zip -d /app/
RUN         rm -rf /tmp/*
RUN         npm install
RUN         wget -O /app/rds-combined-ca-bundle.pem https://truststore.pki.rds.amazonaws.com/global/global-bundle.pem
COPY         run.sh /
ENTRYPOINT   ["bash","/run.sh"]