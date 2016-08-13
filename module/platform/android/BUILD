# Load common symbols
load(
    '//module:common.bzl',
    'public',
    'private',
    'headers',
    'sources',
    'copts_common',
    'copts_common_debug',
    'copts_common_release',
)

hdrs = headers()
srcs = sources()

# Platform specific compilation options
copts_platform_common  = ['-std=c++11', '-Wall']
copts_platform_debug   = ['-g']
copts_platform_release = ['-O2']

# Libraries
cc_library(
    name       = 'module',
    hdrs       = hdrs,
    srcs       = srcs,
    copts      = copts_common + copts_common_release,
    deps       = ['//module:module'],
    visibility = public,
)

cc_library(
    name       = 'module-debug',
    hdrs       = hdrs,
    srcs       = srcs,
    copts      = copts_common + copts_common_debug,
    deps       = ['//module:module'],
    visibility = public,
)
