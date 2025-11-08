#!/usr/bin/env bash
# Bulkhome VirtualGL + TurboVNC environment (user-space, works on llvmpipe)
export DATA_STORE="/import/bulkhome/$USER"

# Paths to extracted VirtualGL and TurboVNC
export VGLROOT="$DATA_STORE/opt/virtualgl/opt/VirtualGL"
export TURBROOT="$DATA_STORE/opt/turbovnc/opt/TurboVNC"

# Path / library setup
export PATH="$VGLROOT/bin:$TURBROOT/bin:$PATH"
export LD_LIBRARY_PATH="$DATA_STORE/opt/virtualgl/usr/lib:$LD_LIBRARY_PATH"

# VNC display selection (you can change if needed)
export VNC_DISPLAY=:1
export DISPLAY="$VNC_DISPLAY"

# Xauthority (llvmpipe, no real GPU required)
export XAUTHORITY="$HOME/.Xauthority"

echo "Bulkhome VirtualGL + TurboVNC environment loaded."
echo "VNC display: $VNC_DISPLAY"
