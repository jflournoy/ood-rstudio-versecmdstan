#!/usr/bin/env sh
set -o nounset

IFS='' read -r password

[ "${USER}" = "${1}" ] && [ "${PASSWORD}" = "${password}" ]
