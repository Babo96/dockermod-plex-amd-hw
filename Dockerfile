FROM alpine as buildstage

LABEL maintainer="babo96"

RUN mkdir -p /root-layer/app

# copy local files
COPY /docker-mod/root/ /root-layer/

FROM scratch

# Add files from buildstage
COPY --from=buildstage /root-layer/ /
