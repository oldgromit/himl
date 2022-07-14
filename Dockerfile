FROM python:3.10.5-slim@sha256:ac63ff0730358ed061589c374fa871958ba0e796b590741395ff3d5d95177fab

WORKDIR /config-merger

ADD . /config-merger/

RUN apt-get update && apt-get install -y make curl

RUN python -m pip install --upgrade pip && pip3 install .
RUN rm -rf /config-merger/*
