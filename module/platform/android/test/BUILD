# Load common symbols
load(
    '//:common.bzl',
    'public',
    'private',
)

# Test Suites
test_suite(
    name       = 'unittests',
    tags       = ['unittest'],
    visibility = private,
)

# Tests
cc_test(
    name       = 'unittest',
    size       = 'small',
    tags       = ['unittest'],
    srcs       = ['module-test.cc'],
    deps       = ['@googletest//:gtest', '@googletest//:gmock', '//module/platform/android:module'],
    visibility = private,
)
