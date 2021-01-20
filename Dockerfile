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
RUN go build -o main .
CMD  [".","/app/main"]

WIth gobuild and amazonlinux:
============================
FROM amazonlinux
RUN yum install git java-1.8.0-openjdk golang  -y
RUN git clone https://github.com/logambigaik/golang-application.git
WORKDIR ./golang-application
RUN go build -o main
RUN mkdir app
ADD . /app
COPY main /app
CMD  [".","/app/main"]

