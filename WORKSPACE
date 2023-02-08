workspace(name = "rules_wpiformat")

load("//wpiformat:load_wpiformat_rules_dependencies.bzl", "rules_wpiformat_dependencies")

rules_wpiformat_dependencies()

# Toolchains

load("//wpiformat:load_dependencies.bzl", "load_wpiformat_dependencies")

load_wpiformat_dependencies()

load("@rules_wpiformat_pip//:requirements.bzl", "install_deps")

install_deps()
