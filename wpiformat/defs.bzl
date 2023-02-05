load("@rules_wpiformat_pip//:requirements.bzl", "requirement")

def format_target(name, srcs):
    package_name = native.package_name()

    native.py_binary(
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
