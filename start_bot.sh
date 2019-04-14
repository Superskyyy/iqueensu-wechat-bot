#!/bin/bash

# This cannot be ran on windows linux subsystem, since docker doesnt support such thing
# Use soemthing like webstorm + docker to test.

function start() {
  sudo docker run \
    -t -i --rm \
    -e WECHATY_LOG="$WECHATY_LOG" \
    -e WECHATY_PUPPET="$WECHATY_PUPPET" \
    -e WECHATY_TOKEN="$WECHATY_TOKEN" \
    --mount type=bind,source="$(pwd)",target=/bot \
    zixia/wechaty:latest \
    "$@"
}
