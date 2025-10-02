FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

RUN apt update -y && apt install -y htop zip curl git golang-go

ENV GOPATH=/root/go
ENV PATH=$PATH:$GOPATH/bin

RUN mkdir -p $GOPATH

RUN go install github.com/yudai/gotty@latest

EXPOSE 8080

CMD ["gotty", "-p", "8080", "sh"]
