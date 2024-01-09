
FROM golang:1.21 as Builder

LABEL authors="haroldovinente"

WORKDIR /app

ADD . /app
RUN go mod download

RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main .

FROM scratch

WORKDIR /root/

COPY --from=builder /app/main .

CMD ["./main"]