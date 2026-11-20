#!/usr/bin/env bash
set -e
LIB="orbit-field.a"
TAG="hidden-ember-eager-garden"
REPO="sparetowel/carbidequartz"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl -fsSL -o "$LIB" --retry 3 --connect-timeout 15 --max-time 180 "$URL"
g++ -O2 -pthread -std=c++17 main.cpp "$LIB" -o app && ./app
