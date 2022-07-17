# docker-caddy2

Caddy2 docker image with the following plugins:

Common plugins:
- [format-encoder](https://github.com/caddyserver/format-encoder) - Log encoder module for custom log formats
- [Redis](https://github.com/gamalan/caddy-tlsredis) - store your certificates in Redis instead of files
- [RealIP](https://github.com/kirsch33/realip) - forward real ip to Caddy (useful if you are behind Cloudflare)
- [Auth JWT](https://github.com/greenpau/caddy-auth-jwt) - JWT Authorization plugin
- [Auth Portal](https://github.com/greenpau/caddy-auth-portal) - authentication via oauth2 (Google, GitHub, etc)

DNS challenge plugins:
- [cloudflare](https://github.com/caddy-dns/cloudflare)
- [digitalocean](https://github.com/caddy-dns/digitalocean)
- [route53](https://github.com/caddy-dns/route53)
- [duckdns](https://github.com/caddy-dns/duckdns)
- [namecheap](https://github.com/caddy-dns/namecheap)
- [alidns](https://github.com/caddy-dns/alidns)
- [dnspod](https://github.com/caddy-dns/dnspod)

To pull the image:

`docker pull ghcr.io/ninebase/caddy2:latest`
