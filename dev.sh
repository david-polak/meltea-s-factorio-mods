#!/usr/bin/env zsh

rm ~/.factorio/mods/meltea-s-early-transport-belt-capacity_1.0.0.zip; \
cp -r early-transport-belt-capacity /tmp/meltea-s-early-transport-belt-capacity_1.0.0/ \
&& 7z a \
  ~/.factorio/mods/meltea-s-early-transport-belt-capacity_1.0.0.zip \
  /tmp/meltea-s-early-transport-belt-capacity_1.0.0 \
&& rm -rf /tmp/meltea-s-early-transport-belt-capacity_1.0.0


