FROM golang

RUN git clone https://github.com/mesosphere/mesos-dns.git /go/src/mesos-dns
RUN go get github.com/tools/godep
RUN cd /go/src/mesos-dns && go get 
RUN cd /go/src/mesos-dns && go build

ADD config.json /go/src/mesos-dns/
ADD start.sh /go/src/mesos-dns/
RUN chmod a+x /go/src/mesos-dns/start.sh

WORKDIR /go/src/mesos-dns

EXPOSE 53

CMD /go/src/mesos-dns/start.sh
