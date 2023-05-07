load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def load_wpiformat_rule_dependencies():
    maybe(
        http_archive,
        name = "rules_python",
        sha256 = "48a838a6e1983e4884b26812b2c748a35ad284fd339eb8e2a6f3adf95307fbcd",
        strip_prefix = "rules_python-0.16.2",
        url = "https://github.com/bazelbuild/rules_python/archive/refs/tags/0.16.2.tar.gz",
    )
