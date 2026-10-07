cmake_minimum_required(VERSION 3.15)
project(sevn_link_test LANGUAGES CXX)

find_package(SEVN CONFIG REQUIRED)

add_executable(sevn-link-test main.cpp)
target_link_libraries(sevn-link-test PRIVATE SEVNLIBS::sevn_lib_shared)
