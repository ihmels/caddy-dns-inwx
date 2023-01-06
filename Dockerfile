FROM caddy:2.6-builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/inwx@v0.1.1

FROM caddy:2.6

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
