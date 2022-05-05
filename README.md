# tor-static-builder

This project helps compile Tor into a static lib for use in other projects.

The dependencies are in this repository as submodules so this repository needs to be cloned with `--recursive`. The
submodules are:

* [OpenSSL](https://github.com/openssl/openssl/)
* [Libevent](https://github.com/libevent/libevent) 
* [zlib](https://github.com/madler/zlib)
* [Tor](https://github.com/torproject/tor)

## Building on Linux

Run :
* setup.sh : it install build-essential and asciidoc
* build.sh : it build all libs and then tor
