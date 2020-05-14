#!/bin/bash

docker run -d \
    -p 6680:6680 \
    --device /dev/snd \
    mopidy_container
