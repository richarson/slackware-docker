#!/bin/bash

RM=true
if [ "$1" == "--no-rm" ] ; then
    RM=false
    shift
fi

ARQ="$1"
VER="14.2"
REPO="richis"

if [ "${ARQ}" == "32" ] ; then
    IMG="${REPO}/slackware-full:${VER}"
    PERS="linux32"
elif [ "${ARQ}" == "64" ] ; then
    IMG="${REPO}/slackware64-full:${VER}"
    PERS=""
else
    echo -e "\n   Usage: $0 [ --no-rm ] 32|64 [ command ]\n"
    exit 1
fi

shift
if [ $# -eq 0 ] ; then
    CMD="/bin/bash --login"
else
    CMD="$@"
fi

if ${RM} ; then
    docker run --rm --interactive --tty \
        --hostname slack${ARQ}-rm --name slack${ARQ}-rm \
        -v ${HOME}/repositorios/git/richarson/slackbuilds/${VER}:${HOME}/slackbuilds \
        -v ${HOME}/bin/packs-slack${ARQ}:${HOME}/packs-slack${ARQ} \
        -v /var/lib/sbopkg/SBo:/var/lib/sbopkg/SBo \
        ${IMG} ${PERS} ${CMD}
else
    docker run --interactive --tty \
        --hostname slack${ARQ} --name slack${ARQ} \
        -v ${HOME}/repositorios/git/richarson/slackbuilds/${VER}:${HOME}/slackbuilds \
        -v ${HOME}/bin/packs-slack${ARQ}:${HOME}/packs-slack${ARQ} \
        -v /var/lib/sbopkg/SBo:/var/lib/sbopkg/SBo \
        ${IMG} ${PERS} ${CMD}
    grc -es --colour=auto docker ps -a
    echo -e "\ndocker commit slack${ARQ} ${IMG} && sleep 5 && docker rm slack${ARQ}\n"
fi
