#!/usr/bin/env sh
set -e
MIRROR=http://download.sonatype.com/nexus

dl() {
    local major_ver=$1
    local fq_ver=$2
    local os=$3
    local archive_type=$4
    local url=$MIRROR/${major_ver}/nexus-${fq_ver}-${os}.${archive_type}.sha1

    printf "      # %s\n" $url
    printf "      %s: sha1:%s\n" $os $(curl -sSLf $url)
}

dl_ver()
{
    local major_ver=$1
    local minor_ver=$2
    local patch_ver=$3
    local fq_ver="${major_ver}.${minor_ver}.${patch_ver}"

    printf "  '%s':\n" $fq_ver
    dl $major_ver $fq_ver unix tar.gz
    dl $major_ver $fq_ver mac tgz
    dl $major_ver $fq_ver win64 zip
}

dl_ver 3 41 1-01

