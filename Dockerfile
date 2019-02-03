FROM arm32v6/alpine:3.7

RUN apk update && \
    apk add --no-cahce curl bash git && \
    curl -fsSL https://filebrowser.github.io/get.sh | bash \
    mkdir /config

COPY config.json /config/filebrowser.json

EXPOSE 80

VOLUME /srv

ENTRYPOINT ["filebrowser"]

CMD ["--config", "/config/filebrowser.json"]
