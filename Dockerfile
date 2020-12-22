FROM debian:10-slim
LABEL maintainer="Veit Olschinski <volschin@gmail.com>"

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm

# Install base environment
RUN apt-get update \
  && apt-get install -qqy --no-install-recommends apt-utils \
  apt-transport-https \
  bash \
  bluez \
  bluez-hcidump \
  gawk \
  libnet-server-perl \
  netcat \
  perl \
  socat \
  && apt-get autoremove && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD bash /entrypoint.sh
