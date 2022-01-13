#!/bin/bash

mkdir -v build-x86

pushd
  cd build-x86

cmake -G"Unix Makefiles" \
  -DANDROID_ABI=x86 \
  -DANDROID_PLATFORM=android-${ANDROID_VERSION} \
  -DANDROID_TOOLCHAIN=${TOOLCHAIN} \
  -DCMAKE_TOOLCHAIN_FILE=${NDK_PATH}/build/cmake/android.toolchain.cmake \
  ..
popd
