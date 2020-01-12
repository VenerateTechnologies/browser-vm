#!/bin/sh
set -e

# CD to the right directory
cd /root/buildroot-2018.02

# Build our v86 defconfig along with license files.
echo $PWD
make menuconfig BR2_EXTERNAL=/buildroot-v86 v86_defconfig
