load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def load_wpiformat_rule_dependencies():
    maybe(
        http_archive,
        name = "rules_python",
        sha256 = "0a8003b044294d7840ac7d9d73eef05d6ceb682d7516781a4ec62eeb34702578",
        strip_prefix = "rules_python-0.24.0",
        url = "https://github.com/bazelbuild/rules_python/releases/download/0.24.0/rules_python-0.24.0.tar.gz",
    )
