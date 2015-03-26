#!/bin/bash

echo "$MESOS_IP mesos">> /etc/hosts
sed -i.bak "s/MESOS_IP/$MESOS_IP/" /go/src/mesos-dns/config.json
/go/src/mesos-dns/mesos-dns -config /go/src/mesos-dns/config.json -v=2
