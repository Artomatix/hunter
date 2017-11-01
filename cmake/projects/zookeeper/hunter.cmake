# cmake/projects/Example/hunter.cmake

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

# Load used modules
include(hunter_add_version)
include(hunter_download)
include(hunter_pick_scheme)

# List of versions here...
hunter_add_version(
    PACKAGE_NAME
    zookeeper
    VERSION
    "3.4.9-p1"
    URL
    "https://github.com/Artomatix/zookeeper/archive/3.4.9-hunter-5.tar.gz"
    SHA1
    0b239060526a65800380e82c7052a200539251f6
)

# Pick a download scheme
hunter_pick_scheme(DEFAULT url_sha1_cmake) # use scheme for cmake projects

# Download package.
# Two versions of library will be build by default:
#     * libexample_A.a
#     * libexample_Ad.a
hunter_download(PACKAGE_NAME zookeeper)
