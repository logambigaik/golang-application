FROM golang:latest
RUN mkdir /app
ADD . /app
WORKDIR /app
CMD ["go","run","/app/helloworld.go"]


With go build
=============
FROM golang:latest
WORKDIR /golang-application
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN go build -o main .
WORKDIR /app
CMD ["./main"]

WIth gobuild and amazonlinux:
============================
FROM amazonlinux
RUN yum install git java-1.8.0-openjdk -y
RUN git clone https://github.com/logambigaik/golang-application.git
FROM golang:latest
WORKDIR /golang-application
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN go build -o main .
CMD ["/app/main"]
