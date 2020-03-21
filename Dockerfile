FROM alpine:3.9.5
RUN apk update && apk upgrade
RUN apk add python3 python3-dev dumb-init
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install sopel
RUN adduser -h /home/grimsdottir --disabled-password grimsdottir
WORKDIR /home/grimsdottir
USER grimsdottir
ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["/usr/bin/sopel"]