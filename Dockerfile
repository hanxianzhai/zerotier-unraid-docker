FROM alpine
RUN set -ex; \
    apk update && apk add zerotier-one
    \
COPY *.sh /
RUN chmod +x /entrypoint.sh
EXPOSE 9993/udp
ENTRYPOINT ["/entrypoint.sh"]
CMD ["zerotier-one"]
