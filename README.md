# iperf-multi
Container image for running multiple instances of iperf server

Set env variable COUNT to the number of instances you want to run. Each instance will listen on a different port, starting at the default 5201 and counting upward.

```
docker container run --rm --init --net=host --name iperf -e COUNT=2 cseelye/iperf-multi
```
