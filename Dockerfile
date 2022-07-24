FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install --no-install-recommends --yes iperf3 && \
    apt-get autoremove --yes && apt-get clean && rm -rf /var/lib/apt/lists/*
COPY launcher /launcher

CMD ["/launcher"]
