from cm2network/steamcmd:root

ENV STEAMAPPDIR /home/steam/ql
ENV STEAMAPPID 349090
ENV ADMIN 76561198040797413

RUN su steam -c "${STEAMCMDDIR}/steamcmd.sh \
            +login anonymous  \
            +force_install_dir ${STEAMAPPDIR}  \
            +app_update ${STEAMAPPID} validate  \
            +quit" 

COPY ./ql.sh ${STEAMAPPDIR}/ql.sh

ENV PORT 27960
ENV HOSTNAME Enter the QuakeZone

USER steam
WORKDIR $STEAMAPPDIR

ENTRYPOINT bash ql.sh

EXPOSE 27960/udp
