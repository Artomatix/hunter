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
    "3.6.0-hunter-3"
    URL
    "https://github.com/Artomatix/zookeeper/archive/3.6.0-hunter-3.tar.gz"
    SHA1
    0692646bc0ceb5dc06f04b38014f97a13ec8a688
)

# Pick a download scheme
hunter_pick_scheme(DEFAULT url_sha1_cmake) # use scheme for cmake projects

hunter_cacheable(zookeeper)
hunter_download(PACKAGE_NAME zookeeper)
