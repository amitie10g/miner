<<<<<<< HEAD
FROM nvidia/cuda:10.2-base AS downloader
=======
FROM nvidia/cuda:10.2-cudnn7-runtime-ubuntu16.04
>>>>>>> f20655d9bb80013d196f5e5795e533120bb62364

WORKDIR /tmp

RUN apt-get update && \
    apt-get install --no-install-recommends --yes curl wget xz-utils

RUN set -x && \
    curl -s https://api.github.com/repos/develsoftware/GMinerRelease/releases/latest \
    | grep "browser_download_url.*linux64" \
    | cut -d : -f 2,3 \
    | tr -d \" \
    | wget -O- -qi - \
    | tar  xJf -

RUN set -x && \
    curl -s https://api.github.com/repos/fireice-uk/xmr-stak/releases \
    | grep "browser_download_url.*xmr-stak-rx-linux" \
    | cut -d : -f 2,3 \
    | tr -d \" \
    | wget -O- -qi - \
    | tar  xJf -

FROM nvidia/cuda:10.2-cudnn7-runtime-ubuntu16.04

COPY --from=downloader /tmp/miner /tmp/xmr-stak-rx-linux-*/xmr-stak-rx /usr/local/bin/
COPY entrypoint /root/entrypoint

# Default environment (gminer)
#ENV SERV=
#ENV PORT=
#ENV USER=
#ENV ALGO=
#ENV EXTRA=

# Default environment (xmr-stak)
#ENV XMR_SERV=
#ENV XMR_PORT=
#ENV XMR_USER=
#ENV XMR_CURR=
#ENV XMR_EXTRA=

WORKDIR /root

ENTRYPOINT ["/root/entrypoint"]
