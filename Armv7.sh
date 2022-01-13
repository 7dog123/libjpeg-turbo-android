#!/bin/bash

mkdir -v  build-armv7

pushd build-armv7

cmake -G"Unix Makefiles" \
  -DANDROID_ABI=armeabi-v7a \
  -DANDROID_ARM_MODE=arm \
  -DANDROID_PLATFORM=android-${ANDROID_VERSION} \
  -DANDROID_TOOLCHAIN=${TOOLCHAIN} \
  -DCMAKE_ASM_FLAGS="--target=arm-linux-androideabi${ANDROID_VERSION}" \
  -DCMAKE_TOOLCHAIN_FILE=${NDK_PATH}/build/cmake/android.toolchain.cmake \
  ..
popd
