from bazelrio_gentool.generate_styleguide_rule import StyleguideGroup


def get_wpiformat_group():
    return StyleguideGroup(
        short_name="wpiformat",
        is_java=False,
        is_python=True,
        has_skylib=True,
        include_wpiformat=False,
        repo_name="rules_wpiformat",
        version="2022.30",
        year=1,
        maven_url="",
    )
