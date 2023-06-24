from get_wpiformat_group import get_wpiformat_group


def main():
    group = get_wpiformat_group()
    print(group.version)


if __name__ == "__main__":
    main()
