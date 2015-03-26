FROM golang

RUN git clone https://github.com/mesosphere/mesos-dns.git
RUN cd mesos-dns && make
RUN go get github.com/tools/godep

ADD config.json /go/mesos-dns/
ADD start.sh /go/mesos-dns/
RUN chmod a+x /go/mesos-dns/start.sh

WORKDIR /go/mesos-dns

EXPOSE 53

CMD /go/mesos-dns/start.sh
