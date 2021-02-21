FROM golang:alpine as builder
WORKDIR /app
COPY src .
RUN go build -o graphpg main.go

FROM alpine

ENV HOST http://localhost:9000/graphql
ENV TITLE "GraphQL Playground"
ENV PORT 8080
ENV THEME dark
ENV AUTH_TOKEN ""
ENV X_API_KEY ""

WORKDIR /app
COPY --from=builder /app/graphpg .
COPY --from=builder /app/index.html src/index.html
EXPOSE 8080
ENTRYPOINT  ["./graphpg"]