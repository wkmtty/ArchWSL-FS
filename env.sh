#!/bin/bash

ARCH="x86_64"
ROOTFS_VER="2020.07.01"
ROOTFS_FN="archlinux-bootstrap-${ROOTFS_VER}-${ARCH}.tar.gz"
ROOTFS_URL="http://mirrors.kernel.org/archlinux/iso/${ROOTFS_VER}/${ROOTFS_FN}"

FRTCP_BLD="20072700"
FRTCP_VER="1.24-2"
FRTCP_FN="fakeroot-tcp-${FRTCP_VER}-${ARCH}.pkg.tar.xz"
FRTCP_URL="https://github.com/wkmtty/ArchWSL-FS/releases/download/${FRTCP_BLD}/${FRTCP_FN}"

PAC_PKGS="base less nano sudo vim curl"

if type curl >/dev/null 2>&1 ;then
    DLR="curl"
fi
if type wget >/dev/null 2>&1;then
    DLR="wget"
fi
if type aria2c >/dev/null 2>&1; then
    DLR="aria2c -x4"
fi


