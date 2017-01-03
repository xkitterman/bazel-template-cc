# Supported header file types
hdrs_file_types = ['.h', '.hpp']

# Supported source file types
srcs_file_types = ['.cc', '.cpp'] + hdrs_file_types

# Common compilation options for all build types
copts_common  = ['-std=c++14', '-Wall']

# Common compilation options for all debug build types
copts_common_debug = ['-g']

# Common compilation options for all release build types
copts_common_release = ['-O2']

# Public header files located within the include directory relative to the BUILD file
def headers():
    return native.glob(['public/**/*{}'.format(file_type) for file_type in hdrs_file_types])

# Private headers and source files located within the source directory relative to the BUILD file
def sources():
    return native.glob(['source/**/*{}'.format(file_type) for file_type in srcs_file_types])
