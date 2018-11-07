FROM golang:1.11
RUN curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh
RUN go get -v -x https://github.com/CityOfZion/neo-storm/tree/master/cli
WORKDIR /go/src/ https://github.com/CityOfZion/neo-storm
RUN make install 
