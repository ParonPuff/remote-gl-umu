#!/usr/bin/env bash
set -e

DATA_STORE="/import/bulkhome/$USER"
mkdir -p "$DATA_STORE/opt"
cd "$DATA_STORE/opt"

#install virtual gl
VGL_DIR="$DATA_STORE/opt/virtualgl"
mkdir -p "$VGL_DIR"

wget https://github.com/VirtualGL/virtualgl/releases/download/3.1.4/virtualgl_3.1.4_amd64.deb

dpkg-deb -x virtualgl_3.1.4_amd64.deb "$VGL_DIR"
rm virtualgl_3.1.4_amd64.deb

#install turboVNC
TURB_DIR="$DATA_STORE/opt/turbovnc"
mkdir -p "$TURB_DIR"

wget https://github.com/TurboVNC/turbovnc/releases/download/3.2.1/turbovnc_3.2.1_amd64.deb

dpkg-deb -x turbovnc_3.2.1_amd64.deb "$TURB_DIR"
rm turbovnc_3.2.1_amd64.deb
