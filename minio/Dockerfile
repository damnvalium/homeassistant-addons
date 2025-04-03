FROM minio/minio:latest

COPY bashio /tmp/bashio
RUN mv /tmp/bashio/lib /usr/lib/bashio && ln -s /usr/lib/bashio/bashio /usr/bin/bashio

COPY setup.sh /tmp
RUN chmod +x /tmp/setup.sh
RUN source /tmp/setup.sh

CMD ["server", "/share/raid1/MinIO", "--console-address", ":9001"]