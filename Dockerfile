FROM nvidia/cuda:10.2-base AS downloader

WORKDIR /tmp
RUN apt-get update && \
    apt-get install --no-install-recommends -y wget curl xz-utils

RUN curl -s https://api.github.com/repos/fireice-uk/xmr-stak/releases/latest \
    | grep "browser_download_url.*xmr-stak-rx-linux" \
    | cut -d : -f 2,3 \
    | tr -d \" \
    | wget -O- -qi - \
    | tar xJf -
	
RUN curl -s https://api.github.com/repos/develsoftware/GMinerRelease/releases/latest \
    | grep "browser_download_url.*linux64" \
    | cut -d : -f 2,3 \
    | tr -d \" \
    | wget -O- -qi - \
    | tar xJf -

FROM nvidia/cuda:10.2-cudnn7-runtime

COPY --from=downloader /tmp/miner /tmp/xmr-stak-rx-linux-*/xmr-stak-rx /usr/local/bin/
COPY entrypoint.sh /root/entrypoint.sh

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