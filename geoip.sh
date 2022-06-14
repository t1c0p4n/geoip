#!/usr/bin/env bash
# Pacotes necessários:
# geoip-bin
# geoip-database
#
# Uso: ./geoip.sh <lista_de_ips>

arquivo="$1"

while IFS= read -r linha || [[ -n "$linha" ]]; do
  echo "$linha"
  geoiplookup "$linha"
done < "$arquivo"
