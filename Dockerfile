FROM golang:latest 
RUN mkdir /app 
ADD . /app/ 
WORKDIR /app
RUN go get -d
NOTVALID DOES NOT EXIST
RUN go build -o main . 
CMD ["/app/main"]
EXPOSE 80
