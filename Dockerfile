#
# Dockerfile for pptpd
#

FROM vank3f3/base:alpine3.5
RUN apk add --no-cache iptables ppp pptpd

COPY pptpd.conf    /etc/
COPY chap-secrets  /etc/ppp/
COPY pptpd-options /etc/ppp/

EXPOSE 1723

CMD set -xe \
    && iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE \
    && pptpd \
    && syslogd -n -O /dev/stdout
