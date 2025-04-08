#!/bin/bash
export USER=root  # Add this line
tightvncserver :1 -geometry 1280x720 -depth 24
tail -f /dev/null
