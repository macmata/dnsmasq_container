FROM alpine:3.6
RUN apk add --no-cache dnsmasq
COPY dnsmasq.conf /etc/dnsmasq.conf
ENTRYPOINT ["/usr/sbin/dnsmasq", "-d"]
