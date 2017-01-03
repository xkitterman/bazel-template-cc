package(
    default_visibility = ['//visibility:public']
)

# Load common symbols
load(
    '//:common.bzl',
    'headers',
    'sources',
    'copts_common',
    'copts_common_debug',
    'copts_common_release',
)

hdrs = headers()
srcs = sources()

# Libraries
cc_library(
    name  = 'module',
    hdrs  = hdrs,
    srcs  = srcs,
    copts = copts_common + copts_common_release,
    deps  = ['//module:module'],
)

cc_library(
    name  = 'module-debug',
    hdrs  = hdrs,
    srcs  = srcs,
    copts = copts_common + copts_common_debug,
    deps  = ['//module:module'],
)
