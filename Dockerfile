##################################
#       Streem Dockerfile.       #
# https://github.com/matz/streem #
##################################
FROM ubuntu

RUN apt-get update && apt-get install build-essential -y

ENV PATH="/usr/src/streem/bin:${PATH}"

COPY . /usr/src/streem

RUN cd /usr/src/streem && make

CMD /usr/src/streem/bin/streem
