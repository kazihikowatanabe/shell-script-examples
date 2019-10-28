#!/bin/bash

redirect_moto_url=(
https://redirect-moto-url.co.jp
)

for ((i = 0; i < ${#redirect_moto_url[@]} ; i++)) {
  curl -s -I -L ${redirect_moto_url[$i]} | grep location | sed -e "s/location: //g"
}
