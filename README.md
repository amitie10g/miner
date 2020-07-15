# gminer and xmr-stak Docker image

This repository allows to build a Docker image containing [gminer](https://github.com/develsoftware/GMinerRelease/releases) (CUDA/OpenCL) and [xmr-stak](https://github.com/fireice-uk/xmr-stak) (CPU), for personal use and for renting purposes. Executables are downloaded from upstream's release.

*If you use **Brave Browser**, please consider **donating some BAT** to me. If you don't have **Brave Browser** yet, **[download it now](https://brave.com/ami810)** and get rid annoying ads!*

## Usage
```
docker run amitie10g/miner \
       --algo "$ALGO" \
       --server "$SERV" \
       --port "$PORT" \
       --user "$USER" \
       --extra "$EXTRA"
       --xmr-server "$XMR_SERV" \
       --xmr-port "$XMR_PORT" \
       --xmr-user "$XMR_USER" \
       --xmr-curr "$XMR_CURR" \
       --xmr-extra ""$XMR_EXTRA" \
```
Parameters can be passed through command line or environment variables.
