#!/bin/bash

log="$DIR/log.txt"
token=$(cat $DIR/config.json | jq -r .token)
url="https://ipinfo.io"

echo_n() {
    echo -e "${White}$1${NC}"
    echo "NORMAL: $(date): $1" >> $log
}

echo_error() {
    echo -e "${Red}$1${NC}"
    echo "ERROR: $(date): $1" >> $log
}

log() {
    echo "LOG: $(date): $1" >> $log
}

iinfo() {
    curl -s "$url/$1?token=$token"
}

hostinfo() {
    curl -s "https://host.io/api/web/$1?token=$token"
}

asn() {
    curl -s "$url/$1/json?token=$token"
}
