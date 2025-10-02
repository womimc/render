FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04
RUN apt-get update && \
    apt-get install -y shellinabox && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
#RUN echo 'root:' | chpasswd
EXPOSE 20 21 22 80 443 888 8888 3306 39000-40000
CMD ["/usr/bin/shellinaboxd", "-t", "-s", "/:LOGIN"]
