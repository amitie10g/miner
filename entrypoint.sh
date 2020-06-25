#!/bin/bash

ARGUMENT_LIST=(
    "algo"
    "server"
    "port"
    "user"
    "extra"
    "xmr-server"
    "xmr-port"
    "xmr-user"
    "xmr-curr"
    "xmr-extra"
)


# read arguments
opts=$(getopt \
    --longoptions "$(printf "%s:," "${ARGUMENT_LIST[@]}")" \
    --name "$(basename "$0")" \
    --options "" \
    -- "$@"
)

eval set --$opts

while [[ $# -gt 0 ]]; do
    case "$1" in
        --algo)
            ALGO=$2
            shift 2
            ;;

        --server)
            SERV=$2
            shift 2
            ;;

        --port)
            PORT=$2
            shift 2
            ;;

        --user)
            USER=$2
            shift 2
            ;;
            
        --extra)
            EXTRA$2
            shift 2
            ;;

        --xmr-server)
            XMR_SERV=$2
            shift 2
            ;;

        --xmr-port)
            XMR_PORT=$2
            shift 2
            ;;

        --xmr-user)
            XMR_USER=$2
            shift 2
            ;;

        --xmr-curr)
            XMR_CURR=$2
            shift 2
            ;;
            
        --xmr-extra)
            XMR_EXTRA$2
            shift 2
            ;;

        *)
            break
            ;;
    esac
done

if [[ $(grep -c ^processor /proc/cpuinfo) -ge 8 ]]; then
    exec miner --nvml 0 --algo "$ALGO" --server "$SERV" --port "$PORT" --user "$USER" "$EXTRA" <&- & \
    exec xmr-stak-rx --url "$XMR_SERV:XMR_PORT" --user "$XMR_USER" --pass x --currency "$XMR_CURR" "$XMR_EXTRA" <&-
else
    exec miner --nvml 0 --algo "$ALGO" --server "$SERV" --port "$PORT" --user "$USER" "$EXTRA"
fi