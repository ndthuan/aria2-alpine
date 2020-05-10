#!/bin/sh

cat > /etc/aria2.conf <<EOF
log-level=warn
enable-rpc=true
rpc-listen-all=true
rpc-secret=${RPC_SECRET:-}
dir=${DOWNLOAD_DIR:-/downloads}
log=${DOWNLOAD_DIR:-/downloads}/aria2.log
max-concurrent-downloads=${CONCURRENT_DOWNLOADS:-4}
split=${SPLIT:-4}
max-connection-per-server=${CONNECTIONS_PER_SERVER:-4}
user-agent=${USER_AGENT:-}
file-allocation=${FILE_ALLOCATION:-none}
allow-overwrite=${ALLOW_OVERWRITE:-true}
auto-file-renaming=${AUTO_FILE_RENAMING:-false}

EOF

exec "$@"
