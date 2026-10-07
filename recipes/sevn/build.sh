#!/usr/bin/env bash
set -euxo pipefail

cmake ${CMAKE_ARGS} -G Ninja -S . -B build \
  -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_INSTALL_PREFIX="${PREFIX}" \
  -DCMAKE_INSTALL_LIBDIR=lib \
  -Dstaticlib=OFF \
  -Dsharedlib=ON \
  -Dlinklib=shared \
  -Dh5=OFF \
  -Dlto=OFF \
  -Dtest=OFF
cmake --build build --parallel "${CPU_COUNT}"
cmake --install build
