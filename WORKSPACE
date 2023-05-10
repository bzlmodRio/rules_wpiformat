workspace(name = "rules_wpiformat")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "bazel_skylib",
    sha256 = "060426b186670beede4104095324a72bd7494d8b4e785bf0d84a612978285908",
    strip_prefix = "bazel-skylib-1.4.1",
    url = "https://github.com/bazelbuild/bazel-skylib/releases/download/1.4.1/bazel_skylib-1.4.1.tar.gz",
)

# Rule Dependencies
load("//dependencies:load_rule_dependencies.bzl", "load_wpiformat_rule_dependencies")

load_wpiformat_rule_dependencies()

# Transitive Dependencies

load("//dependencies:load_dependencies.bzl", "load_wpiformat_dependencies")

load_wpiformat_dependencies()

load("@rules_wpiformat_pip//:requirements.bzl", "install_deps")

install_deps()
