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
    3.4
    URL
	"https://github.com/Artomatix/clBLAS/archive/3.4.tar.gz"
    SHA1
	e4ca73f38b7c1a79bab96dd9c1ae82e76d9ca0c3
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
