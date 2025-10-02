FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

RUN apt update -y && apt install -y htop zip curl git golang-go

RUN go install github.com/yudai/gotty@latest

EXPOSE 8080

CMD ["/root/go/bin/gotty", "-p", "8080", "sh"]
