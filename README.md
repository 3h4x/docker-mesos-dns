# mesos-dns

## quick start

`MESOS_DNS=$(docker run -it -e MESOS_IP=_YOUR_MESOS_MASTER_IP_-e RESOLVER='"_YOUR_DNS_ADD", "_ANOTHER_DNS_ADDR"' -p 53:53/udp 3h4x/mesos-dns)`

check if all is good with

`docker logs $MESOS_DNS`

## test it

Try to resolve mesos leader:

`dig +short @$(docker inspect -f "{{ .NetworkSettings.IPAddress }}" $MESOS_DNS) leader.mesos`

if it returns IP then all is good!

## Docs:
[mesos-dns](http://mesosphere.github.io/mesos-dns/docs/naming.html)
