def cc_library_module(
    name,
    copts    = [],
    deps     = [],
    hdrs_dir = 'public',
    srcs_dir = 'source',
):
    # Supported header file types
    hdr_file_types = ['.h', '.hpp']

    # Supported source file types
    src_file_types = ['.c', '.cc', '.cpp'] + hdr_file_types

    native.cc_library(
        name  = name,
        hdrs  = native.glob(['{}/**/*{}'.format(hdrs_dir, file_type) for file_type in hdr_file_types]),
        srcs  = native.glob(['{}/**/*{}'.format(srcs_dir, file_type) for file_type in src_file_types]),
        copts = copts,
        deps  = deps,

        # Allows public headers to be include via "PACKAGE_NAME/<filename>.h"
        include_prefix = PACKAGE_NAME,
        strip_include_prefix = hdrs_dir,
    )
