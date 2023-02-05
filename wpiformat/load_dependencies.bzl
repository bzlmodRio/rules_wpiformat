load("@rules_python//python:pip.bzl", "pip_parse")

def load_wpiformat_dependencies():
    pip_parse(
        name = "rules_wpiformat_pip",
        requirements_lock = "@rules_wpiformat//:requirements_lock.txt",
    )
