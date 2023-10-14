# dockermod-plex-amd-hw
Docker Mod for Linuxserver.io Plex Image to allow Hardware transcoding on AMD GPU/APU

# Functionality

By copying the required driver files to plex (see #https://forums.plex.tv/t/got-hw-transcoding-to-work-with-libva-vaapi-on-ryzen-apu-ryzen-7-4700u/676546 )
we allow the transcoder to use AMD GPUs and APUs HW transcoding features

# Usage

set ENV Variable for the linuxserver.io/docker-plex container

DOCKER_MODS:ghcr.io/babo96/dockermod-plex-amd-hw:latest

## Compatability

Hopefully 	https://docs.linuxserver.io/images/docker-plex
and		https://github.com/pabloromeo/clusterplex

# Sources
#https://forums.plex.tv/t/got-hw-transcoding-to-work-with-libva-vaapi-on-ryzen-apu-ryzen-7-4700u/676546 Plex Forum post 
#https://docs.linuxserver.io/images/docker-plex

