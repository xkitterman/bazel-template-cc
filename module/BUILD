package(
    default_visibility = ['//visibility:public']
)

# Load common symbols
load(
    '//:common.bzl',
    'cc_library_module',
)

copts_common = ['-std=c++14', '-Wall']

cc_library_module(
    name  = 'module',
    copts = copts_common + ['-O2'],
)

cc_library_module(
    name  = 'module-debug',
    copts = copts_common + ['-g'],
)

# Unittest Suite
test_suite(
    name  = 'unittests',
    tags  = ['unittest'],
    tests = [
        '//module/platform/android/test:unittests',
        '//module/platform/ios/test:unittests',
    ],
)
