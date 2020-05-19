FROM yauritux/busybox-curl
ARG CRONTAB=crontab

RUN mkdir -p /var/spool/cron/crontabs

COPY $CRONTAB /var/spool/cron/crontabs/crontab
CMD ntpd -p pool.ntp.org && crontab -u root /var/spool/cron/crontabs/crontab && crond -f