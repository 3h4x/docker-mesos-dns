#!/bin/bash

echo "$MESOS_IP mesos">> /etc/hosts
sed -i.bak "s/MESOS_IP/$MESOS_IP/" /go/mesos-dns/config.json
/go/mesos-dns/mesos-dns -config /go/mesos-dns/config.json -vv=true
