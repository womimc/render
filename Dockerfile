FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04
RUN apt-get update && \
    apt-get install -y shellinabox tmate zip htop && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
EXPOSE 20 21 22 80 443 888 8888 3306 39000-40000
CMD bash -c "\
    tmate -F ssh new-session -d && \
    tmate display -p '#{tmate_ssh}' && \
    exec /usr/bin/shellinaboxd -t -s /:root:0 --no-beep --disable-ssl --port 4200\
"
