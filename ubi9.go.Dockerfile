FROM redhat/ubi9-minimal

RUN microdnf install -y golang tar gzip ca-certificates && microdnf clean all

COPY . /app
WORKDIR /app

RUN go build -o app main.go

CMD ["./app"]
