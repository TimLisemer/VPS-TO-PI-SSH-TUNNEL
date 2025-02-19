FROM --platform=linux/arm64 alpine:latest

# Install OpenSSH client and libcrypto
RUN apk add --no-cache openssh libcrypto3

WORKDIR /app
COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

ENTRYPOINT [ "sh", "/app/entrypoint.sh" ]