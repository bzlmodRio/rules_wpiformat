load("@rules_python//python:pip.bzl", "package_annotation", "pip_parse")

def load_wpiformat_dependencies():
    ANNOTATIONS = {
        "dataclasses": package_annotation(
            srcs_exclude_glob = ["site-packages/dataclasses.py"],
        ),
    }

    pip_parse(
        name = "rules_wpiformat_pip",
        annotations = ANNOTATIONS,
        requirements_lock = "@rules_wpiformat//:requirements_lock.txt",
        requirements_windows = "@rules_wpiformat//:requirements_windows.txt",
    )
