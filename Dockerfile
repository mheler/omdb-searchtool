FROM ubuntu
RUN apt update
RUN apt -y install curl jq
COPY omdb-searchtool.sh /
ENTRYPOINT ["/omdb-searchtool.sh"]
