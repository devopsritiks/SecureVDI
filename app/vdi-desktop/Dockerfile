# Base image with Ubuntu
FROM ubuntu:22.04

# Set non-interactive frontend for apt
ENV DEBIAN_FRONTEND=noninteractive

# Install XFCE and VNC server
RUN apt-get update && apt-get install -y \
    xfce4 xfce4-goodies \
    tightvncserver \
    && apt-get clean

# Set up VNC password (default: "password")
RUN mkdir -p /root/.vnc && echo "password" | vncpasswd -f > /root/.vnc/passwd
RUN chmod 600 /root/.vnc/passwd

# Copy entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Expose VNC port
EXPOSE 5901

# Start VNC server
ENTRYPOINT ["/entrypoint.sh"]
