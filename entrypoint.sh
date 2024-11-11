#!/bin/sh

ECONUMO_CONFIG_API_URL="${ECONUMO_CONFIG_API_URL:=}"
LILTAG_CONFIG_URL="${LILTAG_CONFIG_URL:=}"
LILTAG_CACHE_TTL="${LILTAG_CACHE_TTL:=0}"
echo "window.econumoConfig = {
  API_URL: \"${ECONUMO_CONFIG_API_URL}\",
  LILTAG_CONFIG_URL: \"${LILTAG_CONFIG_URL}\",
  LILTAG_CACHE_TTL: ${LILTAG_CACHE_TTL},
}" > /usr/share/nginx/html/econumo-config.js


# Запуск Nginx
nginx -g "daemon off;"
