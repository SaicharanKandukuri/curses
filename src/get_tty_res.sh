#!/bin/bash

export BOX_HEIGHT
export BOX_WIDTH

BOX_P=20 # box padding [ 0 matches box HxW with terminal, 20 Best visual fit ]
TTY_HEIGHT=$(stty size | cut -d' ' -f1)
TTY_WIDTH=$(stty size | cut -d' ' -f2)

percentin() {
    # get pertcentage value from max
    local percent=$1
    local total=$2
    echo $((percent * total / 100))
}

BOX_HEIGHT=$((TTY_HEIGHT - $(percentin "$TTY_HEIGHT" $BOX_P)))
BOX_WIDTH=$((TTY_WIDTH - $(percentin "$TTY_WIDTH" $BOX_P)))
