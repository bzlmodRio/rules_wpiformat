from bazelrio_gentool.generate_styleguide_rule import StyleguideGroup


def get_wpiformat_group():
    return StyleguideGroup(
        short_name="wpiformat",
        is_java=False,
        is_python=True,
        include_wpiformat=False,
        repo_name="rules_wpiformat",
        version="2024.34",
        year=1,
        maven_url="",
    )
