# escape=`
FROM lacledeslan/steamcmd:linux as quake2-builder

ARG contentServer=content.lacledeslan.net

RUN echo "\nDownloading custom LL content from $contentServer" &&`
        mkdir --parents /output &&`
        cd /output/ &&`
        wget -rkpN -nH --no-verbose --cut-dirs=2 -R "*.htm*,*.ico" -e robots=off "http://"$contentServer"/fastDownloads/quake2/" &&`
    echo "removing cruft that may have slipped in" &&`
        rm ./logos -rf

#=======================================================================`
FROM lacledeslan/gamesvr-quake2

HEALTHCHECK NONE

ARG BUILDNODE=unspecified
ARG SOURCE_COMMIT=unspecified

# `RUN true` lines are work around for https://github.com/moby/moby/issues/36573
COPY --chown=Quake2:root --from=quake2-builder /output /app
RUN true

COPY --chown=Quake2:root /dist/app /app
RUN true

COPY --chown=Quake2:root /dist/linux /app

# UPDATE USERNAME & ensure permissions
RUN usermod -l Quake2Freeplay Quake2 &&`
    chmod -R ug+rw /app &&`
    chmod +x /app/ll-tests/*.sh && chmod +x /app/q2pro_server_x64 && chmod +x /app/quake2;

USER Quake2Freeplay

WORKDIR /app/

CMD ["/bin/bash"]

ONBUILD USER root
