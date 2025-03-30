#!/bin/bash
# Start VNC server and XFCE desktop
tightvncserver :1 -geometry 1280x720 -depth 24
# Keep container running
tail -f /dev/null
