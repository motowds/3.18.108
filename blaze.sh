#!/bin/bash
#
#Compile script for kernel compile

#create out dir
mkdir -p out


#ARCH
export ARCH=arm

export MTK_PLATFORM=mt6735

#host and user
export KBUILD_BUILD_USER="izaqkull"
export KBUILD_BUILD_HOST="CoreOSX"

#gcc
#export CROSS_COMPILE=$PWD/gcc_linaro_6.3/bin/arm-eabi-
export CROSS_COMPILE=/media/izaqkull/wood/kernel/arm-linux-androideabi-4.9/bin/arm-linux-androideabi-

#Defconfig for Moto E4(woods)
make -C $PWD O=$PWD/out ARCH=arm woods_defconfig

#Compile
make -j5 -C $PWD O=$PWD/out ARCH=arm
