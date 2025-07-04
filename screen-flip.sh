#!/bin/bash

OUTPUT_NAME="eDP-1" #eDP-1 is the onboard screen

current_rotation=$(kscreen-doctor --json | jq -r ".outputs[] | select(.name==\"$OUTPUT_NAME\") | .rotation")

if [ "$current_rotation" == "1" ]; then # 1 corresponds to normal
    kscreen-doctor "output.$OUTPUT_NAME.rotation.inverted"
else
    kscreen-doctor "output.$OUTPUT_NAME.rotation.normal"
fi
