# !!! DO NOT PLACE HEADER GUARDS HERE !!!

# Load used modules
include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

# List of versions here...


hunter_add_version(
    PACKAGE_NAME
    OpenCL
    VERSION
    "2.1-p5"
    URL
    "https://github.com/artomatix/OpenCL-ICD-Loader/archive/2.1-p5.tar.gz"
    SHA1
	1a1500b98a9f4ae054403d6c73780fd7e13c93db
)

hunter_add_version(
    PACKAGE_NAME
    OpenCL
    VERSION
    "2.1-p4"
    URL
    "https://github.com/artomatix/OpenCL-ICD-Loader/archive/2.1-p4.tar.gz"
    SHA1
    8f18a1ffaf7f98f65e1f11343cb82f8da2207936
)

hunter_add_version(
    PACKAGE_NAME
    OpenCL
    VERSION
    "2.1-p3"
    URL
    "https://github.com/hunter-packages/OpenCL-ICD-Loader/archive/2.1-p3.tar.gz"
    SHA1
    be6a6c575088103f1b87c5202dc0f69e49b3764f
)

hunter_add_version(
    PACKAGE_NAME
    OpenCL
    VERSION
    "2.1-p0"
    URL
    "https://github.com/hunter-packages/OpenCL-ICD-Loader/archive/2.1-p0.tar.gz"
    SHA1
    1cb4fed5bc4d0e1583c07e02f43daccab12eb99a
)


hunter_cmake_args(
    OpenCL
    CMAKE_ARGS
        OPENCL_TESTS=OFF
)

# Pick a download scheme
hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(OpenCL)
hunter_download(PACKAGE_NAME OpenCL)
