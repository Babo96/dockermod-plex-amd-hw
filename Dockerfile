FROM ubuntu as buildstage

LABEL maintainer="babo96"

RUN \
  echo "**** install runtime packages ****" && \
  apt-get update && \
  apt-get install -y software-properties-common && \
  add-apt-repository ppa:oibaf/graphics-drivers -y && \
  apt-get update && \
  apt-get update && \
  apt-get install -y \
    vainfo \
    mesa-va-drivers \
    mesa-vdpau-drivers \
    libdrm-amdgpu1 \
    libavutil56

FROM scratch

COPY --from=0 /lib/x86_64-linux-gnu/libdrm_amdgpu.so.1.*] /lib/x86_64-linux-gnu/libdrm.so.2.* /lib/x86_64-linux-gnu/libva-drm.so.2.* /lib/x86_64-linux-gnu/libva.so.2.* /lib/x86_64-linux-gnu/libstdc++.so.6.* /usr/lib/plexmediaserver/lib/
COPY --from=0 /lib/x86_64-linux-gnu/dri/radeonsi_drv_video.so /usr/lib/plexmediaserver/lib/dri/
