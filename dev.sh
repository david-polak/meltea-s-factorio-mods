#!/usr/bin/env zsh

VERSION="2.0.0"

rm "${HOME}/.factorio/mods/meltea-s-early-transport-belt-capacity_${VERSION}.zip"

cp -r \
  "early-transport-belt-capacity" \
  "/tmp/meltea-s-early-transport-belt-capacity_${VERSION}/"

7z a \
  "${HOME}/.factorio/mods/meltea-s-early-transport-belt-capacity_${VERSION}.zip" \
  "/tmp/meltea-s-early-transport-belt-capacity_${VERSION}"

rm -rf "/tmp/meltea-s-early-transport-belt-capacity_${VERSION}"

