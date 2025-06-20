FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3.10 \
    pyhton3-pip \
    git 

RUN pip3 install PyYAML

COPY feed.py /usr/bin/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]