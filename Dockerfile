FROM alpine:latest

WORKDIR /root

RUN apk update && \
    apk add --no-cache bash build-base python3 python3-dev py3-pip curl git && \
    sed -i 's/root:x:0:0:root:\/root:\/bin\/ash/root:x:0:0:root:\/root:\/bin\/bash/' /etc/passwd &&\
    echo "alias vi='vim'" > ~/.bashrc

CMD ["/bin/bash"]
