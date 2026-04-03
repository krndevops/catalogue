FROM            node:18
RUN             mkdir /app
WORKDIR         /app
COPY            ./ /app/
ADD             https://truststore.pki.rds.amazonaws.com/global/global-bundle.pem /app/rds-combined-ca-bundle.pem
RUN             npm install
ENTRYPOINT      ["bash", "/app/run.sh"]