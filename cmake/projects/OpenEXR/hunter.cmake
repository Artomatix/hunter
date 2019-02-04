# !!! DO NOT PLACE HEADER GUARDS HERE !!!

# Load used modules
include(hunter_add_version)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_cmake_args)

# List of versions here...
hunter_add_version(
    PACKAGE_NAME
    OpenEXR
    VERSION
    "1.0.2"
    URL
    "https://github.com/Artomatix/openexr/archive/hunter-test-7.tar.gz"
    SHA1
    5c4a37a0dbddf97c3e7d2512d9e7bb1840f3c8c7
)

hunter_cmake_args(
    OpenEXR
    CMAKE_ARGS
        BUILD_SHARED_LIBS=Off
        NAMESPACE_VERSIONING=Off
        BUILD_OPENEXR_SUBPROJECT=On
)



# Probably more versions for real packages...

# Pick a download scheme
hunter_pick_scheme(DEFAULT url_sha1_cmake) # use scheme for cmake projects

# Download package.
# Two versions of library will be build by default:
#     * libexample_A.a
#     * libexample_Ad.a
hunter_download(PACKAGE_NAME OpenEXR)
