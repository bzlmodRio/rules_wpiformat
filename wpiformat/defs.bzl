load("@rules_python//python:defs.bzl", "py_binary")
load("@rules_wpiformat_pip//:requirements.bzl", "requirement")

def format_target(name, srcs):
    package_name = native.package_name()
    py_binary(
        name = name,
        srcs = ["@rules_wpiformat//wpiformat:format.py"],
        main = "format.py",
        data = srcs,
        args = ["-f"] + [package_name + "/" + x for x in srcs],
        deps = [
            requirement("wpiformat"),
        ],
        tags = ["_wpiformat_apply"],
    )
