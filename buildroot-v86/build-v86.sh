#!/bin/sh
set -e

# Perform dos2unix
cd /buildroot-v86
find . -type f -print0 | xargs -0 dos2unix

# CD to the right directory
cd ~/buildroot-2018.02

# Build our v86 defconfig along with license files.
echo $PWD
make BR2_EXTERNAL=/buildroot-v86 v86_defconfig \
    && make legal-info \
    && make
