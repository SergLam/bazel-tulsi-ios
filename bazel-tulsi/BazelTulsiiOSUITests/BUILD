load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

swift_library(
    name = "BazelTulsi",
    srcs = glob(["**/*.swift"]),
    visibility = ["//visibility:public"],
)

ios_application(
    name = "bazel-tulsi",
    bundle_id = "com.serglam.bazel-tulsi",
    families = [
        "iphone",
        "ipad",
    ],
    minimum_os_version = "11.0",
    infoplists = [":BazelTulsiiOS/BundleFiles/Info.plist"],
    visibility = ["//visibility:public"],
    deps = [":BazelTulsi"],
)