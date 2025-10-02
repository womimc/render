FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

RUN apt update -y && apt install -y htop zip curl sudo openssl

RUN curl -L https://downloads.sourceforge.net/project/shellinabox/shellinabox/2.22/shellinabox-2.22.tar.gz | tar xz \
    && cd shellinabox-2.22 \
    && ./configure --prefix=/usr/local --disable-ssl --with-css=/usr/share/shellinabox/black.css \
    && make && make install

EXPOSE 4200

CMD ["shellinaboxd", "--no-beep", "--disable-ssl", "--port", "4200", "--user-css", "/usr/share/shellinabox/black.css"]
