FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

RUN apt update -y && apt install -y htop zip curl

RUN curl -L https://github.com/yudai/gotty/releases/download/v1.0.1/gotty_linux_amd64.tar.gz | tar xz -C /usr/local/bin

EXPOSE 8080

CMD ["gotty", "-p", "8080", "bash", "-c", "while true; do echo running; sleep 1; done"]
