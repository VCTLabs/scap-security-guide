# Local SCAP workflows w/o distro packages

Local tox workflows and python tools to clone dependent repositories
and build/install openscap deps into a python virtual environment managed
by [![tox](tox)](https://github.com/tox-dev/tox).

## Requirements:

 * A recent toolchain for your dev platform, either GNU or LLVM/Clang
 * Make and/or CMake/Ninja: the latter can be installed via Tox
 * External library requirements (not handled by Tox)
   - most modern desktops should have them installed
   - otherwise check the repo `.spec` file for build requirements
 * If using Tox, a recent Python for your platform and [this tox plugin](https://github.com/masenf/tox-ignore-env-name-mismatch)

## Build with Tox workflow

With at least Python 3.7 installed, install tox and the env-name plugin. First clone
this repository, then run the `sync` command, then `tools`, and finally `install`.

The above commands will clone the openscap repo along with some tools, then build
and install the openscap tools into a virtual environment, and then build/install
the repo itself.  The install results will end up in a tox virtual environment named
*.tox/venv* which you can activate and use as needed. Assuming the external deps
are installed, then continue below.

Note the primary tox commands given above are order-dependent, eg:

    $ git clone https://github.com/VCTLabs/scap-security-guide
    $ cd scap-security-guide
    $ tox -e sync
    $ tox -e tools
    $ tox -e install
    $ source .tox/venv/bin/activate
    (venv) $ oscap --version

### Misc tox commands

Additional tox commands may include the following, eg, if the repo provides a sphinx
docs build.  Each repo with a cmake/python build should provide a `clean` command.

    $ tox -e clean  # clean build and doc artifacts, may also clean shared env
    $ tox -e docs  # build the sphinx documentation
    $ tox -e docs-lint  # link-check the sphinx documentation
