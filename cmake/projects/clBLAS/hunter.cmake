# Copyright (c) 2016, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    clBLAS
    VERSION
    3.5
    URL
	"https://github.com/Artomatix/clBLAS/archive/3.5.tar.gz"
    SHA1
	b957f60cf19e66c3e11db03967c27f7632efab0b
)

hunter_cmake_args(
  clBLAS
  CMAKE_ARGS
      BUILD_TEST=OFF
      BUILD_CLIENT=OFF
      BUILD_PERFORMANCE=OFF
      BUILD_SAMPLE=OFF
      BUILD_KTEST=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(clBLAS)
hunter_download(PACKAGE_NAME clBLAS)
