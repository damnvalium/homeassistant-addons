FROM minio/minio:latest

RUN echo "Operating System: $(uname -s)" && echo "Version: $(uname -r)"

CMD ["server", "/share/raid1/MinIO", "--console-address", ":9001"]