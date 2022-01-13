#!/bin/bash

mkdir -v build-x86

pushd build-x86

NDK_PATH=/usr/local/lib/android/sdk/ndk/23.1.7779620
TOOLCHAIN=clang
ANDROID_VERSION=21

cmake -G"Unix Makefiles" \
  -DANDROID_ABI=x86 \
  -DANDROID_PLATFORM=android-${ANDROID_VERSION} \
  -DANDROID_TOOLCHAIN=${TOOLCHAIN} \
  -DCMAKE_TOOLCHAIN_FILE=${NDK_PATH}/build/cmake/android.toolchain.cmake \
  ..
  make
popd
