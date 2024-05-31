#!/bin/bash

if [ ! -f $CERTIFICATES _OUT ]; then
    openssl req \
    -newkey rsa:2048 \
    -nodes \
    -keyout $CERTIFICATES _KEYOUT \
    -x509 \
    -days 365 \
    -out $CERTIFICATES _OUT \
    -subj "/C=TR/ST=KOCAELI/L=GEBZE/O=42Kocaeli/CN=$DOMAIN_NAME";
fi

exec "$@"