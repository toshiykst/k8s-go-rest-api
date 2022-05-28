FROM golang:1.17.9-alpine as builder
WORKDIR /go/src/github.com/toshiykst/k8s-golang-app/
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN CGO_ENABLED=0 go build

FROM gcr.io/distroless/base:latest
COPY --from=builder /go/src/github.com/toshiykst/k8s-golang-app/k8s-golang-app /k8s-golang-app
CMD ["/k8s-golang-app"]
