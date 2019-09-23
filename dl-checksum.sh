#!/usr/bin/env sh
MAJOR_VER=3
MINOR_VER=18.1-01
VER="${MAJOR_VER}.${MINOR_VER}"
MIRROR=http://download.sonatype.com/nexus/$MAJOR_VER

dl()
{
    local os=$1
    local archive_type=$2
    local url=$MIRROR/nexus-${VER}-${os}.${archive_type}.sha1

    printf "      # %s\n" $url
    printf "      %s: sha1:%s\n" $os $(curl -sSL $url)
}

printf "  '%s':\n" $VER
dl unix tar.gz
dl mac tgz
dl win64 zip

