# Load common symbols
load(
    '//:common.bzl',
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

# Libraries
cc_library(
    name       = 'module',
    hdrs       = hdrs,
    srcs       = srcs,
    copts      = copts_common + copts_common_release,
    visibility = public,
)

cc_library(
    name       = 'module-debug',
    hdrs       = hdrs,
    srcs       = srcs,
    copts      = copts_common + copts_common_debug,
    visibility = public,
)
