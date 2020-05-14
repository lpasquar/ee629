FROM debian:buster-slim

ADD scriptsAndConfig/install.sh /root/install.sh

RUN /root/install.sh
COPY scriptsAndConfig/mopidy.conf /root/.config/mopidy/mopidy.conf
COPY media /root/media
COPY scriptsAndConfig/startMopidy.sh /root/startMopidy.sh

EXPOSE 6680

CMD ["/root/startMopidy.sh"]
