FROM nvidia/cuda:10.2-cudnn7-runtime-ubuntu16.04

WORKDIR /root

COPY / /

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

ENTRYPOINT ["/root/entrypoint"]
