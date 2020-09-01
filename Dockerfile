FROM alpine
RUN set -ex; \
    sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories; \
    apk update && apk add zerotier-one
    \
COPY *.sh /
RUN chmod +x /entrypoint.sh
EXPOSE 9993/udp
ENTRYPOINT ["/entrypoint.sh"]
CMD ["zerotier-one"]
