ARG UBUNTU_VERSION=20.04
ARG CUDA_VERSION=11.5.1-cudnn8
FROM ubuntu:${UBUNTU_VERSION} AS downloader

WORKDIR /tmp

RUN	apt-get update && \
	apt-get install --no-install-recommends --yes curl wget unzip xz-utils

RUN curl -Ls https://api.github.com/repos/develsoftware/GMinerRelease/releases/latest | grep "browser_download_url.*linux64.tar.xz" | cut -d : -f 2,3 | tr -d \" | head -n 1 | wget -O- -qi- | tar  xJf -
RUN curl -Ls https://api.github.com/repos/fireice-uk/xmr-stak/releases | grep "browser_download_url.*xmr-stak-rx-linux.*cpu_cuda-nvidia.tar.xz" | cut -d : -f 2,3 | tr -d \" | head -n 1 | wget -O- -qi- | tar  xJf -

FROM nvidia/cuda:${CUDA_VERSION}-runtime-ubuntu${UBUNTU_VERSION}

COPY --from=downloader /tmp/miner /tmp/xmr-stak-rx-linux-*/xmr-stak-rx /usr/local/bin/
COPY --from=downloader /tmp/xmr-stak-rx-linux-*/*.so /usr/local/lib/
COPY entrypoint /usr/local/bin/entrypoint

RUN ln -s xmr-stak-rx /usr/local/bin/xmr-stak

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

#ENTRYPOINT ["entrypoint"]
