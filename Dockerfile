#FROM golang:latest
#
#
#RUN  mkdir /app
#
#WORKDIR  /app
#
#ADD . /app
#
#RUN go build -o main ./server.go
#
#EXPOSE 8080
#
#CMD /app/main




# Use the official golang image to create a build artifact
#FROM golang:1.15.6 as builder
FROM alpine:latest

COPY . /app
# Create app directory
#RUN mkdir /app

# Add file to /app/
ADD . /app/

# Build the binary
WORKDIR /app



EXPOSE 80:80
#RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main .

# Run service on container startup
#FROM alpine:latest

#WORKDIR /app

#COPY --from=builder /app/main .


#CMD ["/app/main"]
#RUN ["/app/main"]
