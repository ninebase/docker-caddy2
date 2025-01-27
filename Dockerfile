FROM caddy:2.6.0-beta.3-builder AS builder

RUN xcaddy build \
  --with github.com/caddyserver/transform-encoder \
  --with github.com/gamalan/caddy-tlsredis \
  --with github.com/kirsch33/realip \
  --with github.com/greenpau/caddy-auth-portal@latest \
  --with github.com/greenpau/caddy-authorize@latest \
  --with github.com/caddy-dns/cloudflare \
  --with github.com/caddy-dns/digitalocean \
  --with github.com/caddy-dns/route53 \
  --with github.com/caddy-dns/duckdns \
  --with github.com/caddy-dns/namecheap \
  --with github.com/caddy-dns/alidns \
  --with github.com/caddy-dns/dnspod


FROM caddy:2.6.0-beta.3

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

CMD ["caddy", "run", "--environ", "--config", "/etc/caddy/Caddyfile", "--adapter", "caddyfile"]
