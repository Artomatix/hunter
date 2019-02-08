# cmake/projects/Example/hunter.cmake

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

# Load used modules
include(hunter_add_version)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_cacheable)

# List of versions here...
hunter_add_version(
    PACKAGE_NAME
    zookeeper
    VERSION
    "3.6.0-hunter2"
    URL
    "https://github.com/Artomatix/zookeeper/archive/3.6.0-hunter-2.tar.gz"
    SHA1
    7c112a5e542883baf6d8c7039b568a2c6e4851cc
)

# Pick a download scheme
hunter_pick_scheme(DEFAULT url_sha1_cmake) # use scheme for cmake projects

hunter_cacheable(zookeeper)
hunter_download(PACKAGE_NAME zookeeper)
