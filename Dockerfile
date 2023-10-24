FROM python:3.8

USER root

MAINTAINER jpbraun@cloudwatt.com

COPY .  /build
RUN cd /build && python setup.py install
RUN rm -rf /build

EXPOSE 8080

ENTRYPOINT ["tungsten-prometheus-exporter"]
