package(
    default_visibility = ['//visibility:public']
)

# Load common symbols
load(
    '//:common.bzl',
    'cc_library_module',
)

copts_common = ['-std=c++14', '-Wall']

# Libraries
cc_library_module(
    name  = 'module',
    copts = copts_common + ['-O2'],
    deps  = ['//module:module'],
)

cc_library_module(
    name  = 'module-debug',
    copts = copts_common + ['-g'],
    deps  = ['//module:module'],
)
