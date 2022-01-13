#!/bin/bash

mkdir -v build-x86-64

pushd build-x86-64

cmake -G"Unix Makefiles" \
  -DANDROID_ABI=x86_64 \
  -DANDROID_PLATFORM=android-${ANDROID_VERSION} \
  -DANDROID_TOOLCHAIN=${TOOLCHAIN} \
  -DCMAKE_TOOLCHAIN_FILE=${NDK_PATH}/build/cmake/android.toolchain.cmake \
  ..
popd
