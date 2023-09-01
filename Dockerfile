FROM python:3.8-alpine

LABEL Organization="qsnctf" Author="M0x1n <lqn@sierting.com>"

COPY files /tmp/

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.nju.edu.cn/g' /etc/apk/repositories \
    && apk update && apk add libffi-dev openssl-dev libev-dev \
    && pip install -U pip \
    && mv /tmp/flag.sh /flag.sh \
    && mv /tmp/challenges.py /challenges.py \
    && mv /tmp/requirements.txt /requirements.txt \
    && mkdir -p /www && mkdir -p /www/files/ \
    && mv /tmp/docker-entrypoint /usr/local/bin/docker-entrypoint \
    && chmod +x /usr/local/bin/docker-entrypoint

COPY www /www

RUN chmod 755 /www

WORKDIR /www

EXPOSE 80

CMD ["/bin/sh", "-c", "docker-entrypoint"]