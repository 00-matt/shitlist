#!/bin/bash

[[ $# -eq 1 ]] || { printf 'Usage: %s <domain list file>\n' "${0}" >&2; exit 1; }

while read -r line; do
    printf 'duckduckgo.com##[data-domain*="%s"]\n' "${line}"
    printf 'google.*##.g:has(a[href*="%s"])\n' "${line}"
done <"${1}"
