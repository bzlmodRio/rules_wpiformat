workspace(name = "rules_wpiformat")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# Rules Python
http_archive(
    name = "rules_python",
    sha256 = "48a838a6e1983e4884b26812b2c748a35ad284fd339eb8e2a6f3adf95307fbcd",
    strip_prefix = "rules_python-0.16.2",
    url = "https://github.com/bazelbuild/rules_python/archive/refs/tags/0.16.2.tar.gz",
)

load("@rules_python//python:pip.bzl", "pip_parse")

pip_parse(
    name = "rules_wpiformat_pip",
    requirements_lock = "@rules_wpiformat//:requirements_lock.txt",
    requirements_windows = "@rules_wpiformat//:requirements_windows.txt",
)

load("@rules_wpiformat_pip//:requirements.bzl", "install_deps")

install_deps()
