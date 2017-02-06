# Returns a list of all files in the directory's tree that match the specified
# file types.
def find_files(
    directory,
    file_types = ['.*'],
):
    return native.glob(['{}/**/*{}'.format(directory, file_type) for file_type in file_types])

# Default library module params
DEFAULT_HDR_PUB_DIR    = 'public'
DEFAULT_HDR_PVT_DIR    = 'private'
DEFAULT_SRC_DIR        = 'source'
DEFAULT_HDR_FILE_TYPES = ['.h', '.hh', '.hpp', '.hxx', '.inc']
DEFAULT_SRC_FILE_TYPES = ['.c', '.cc', '.cpp', '.cxx', '.c++', '.C']

def cc_library_module(
    name,
    copts          = [],
    deps           = [],
    hdr_pub_dir    = DEFAULT_HDR_PUB_DIR,
    hdr_pvt_dir    = DEFAULT_HDR_PVT_DIR,
    src_dir        = DEFAULT_SRC_DIR,
    hdr_file_types = DEFAULT_HDR_FILE_TYPES,
    src_file_types = DEFAULT_SRC_FILE_TYPES,
):
    # Public header files
    pub_hdrs = find_files(hdr_pub_dir, hdr_file_types)

    # Private header files
    pvt_hdrs = find_files(hdr_pvt_dir, hdr_file_types)

    # Source files
    srcs = find_files(src_dir, src_file_types)

    # Define Library
    native.cc_library(
        name  = name,
        hdrs  = pub_hdrs,
        srcs  = pvt_hdrs + srcs,
        copts = copts,
        deps  = deps,

        # Strip out just the header directory which allows public headers to
        # be included via "<PACKAGE_NAME>/<header_filename>.h"
        include_prefix       = PACKAGE_NAME,
        strip_include_prefix = hdr_pub_dir,
    )
