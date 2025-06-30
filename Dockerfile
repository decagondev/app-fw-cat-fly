FROM ubuntu:20.04

RUN apt-get update && apt-get install -y gcc socat

WORKDIR /app-fw-caf

COPY app-fw-caf.c /app-fw-caf/

RUN gcc -z execstack -fno-stack-protector -no-pie app-fw-caf.c -o app-fw-caf

EXPOSE 5000

CMD socat TCP-LISTEN:5000,reuseaddr,fork EXEC:"stdbuf -i0 -o0 -e0 ./app-fw-caf"