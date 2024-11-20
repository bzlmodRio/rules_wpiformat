from os import chdir, environ
from sys import exit

from wpiformat import main

if __name__ == "__main__":
    chdir(environ["BUILD_WORKSPACE_DIRECTORY"])
    exit(main())
