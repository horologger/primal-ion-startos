#!/bin/sh

printf "\n\n [i] Starting Primal-Ion ...\n\n"

busybox httpd -f -v -p 3000 -h /primal
