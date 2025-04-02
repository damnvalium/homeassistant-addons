# Use the official Alpine base image
FROM alpine:latest

# Set environment variables
ENV MINIO_VERSION=RELEASE.2023-09-01T00-00-00Z \
    MINIO_ACCESS_KEY=minioadmin \
    MINIO_SECRET_KEY=minioadmin

# Install dependencies
RUN apk add --no-cache \
    curl \
    ca-certificates \
    bash && \
    curl -L https://dl.min.io/server/minio/release/linux-amd64/archive/minio.${MINIO_VERSION} -o /usr/local/bin/minio && \
    chmod +x /usr/local/bin/minio && \
    mkdir -p /data /root/.minio && \
    apk del curl

# Expose MinIO ports
EXPOSE 9000

# Set working directory
WORKDIR /data

# Command to run MinIO
ENTRYPOINT ["/usr/local/bin/minio"]
CMD ["server", "/data"]