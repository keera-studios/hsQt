# Linux

This is how you get one of the examples running "quickly". I tested these
instructions with ghc 7.8:

:exclamation: Warning

> Please be aware that GHC consumes a lot of memory to compile this library.
> You may want to kill it during compilation and restart it (it will resume
> from the file it was compiling at the time).

``` bash
$ cabal update
$ cabal unpack qt
$ cd qt-*
$ cabal sandbox init
$ cabal install OpenGL
$ ./build --no-install
$ cabal install --extra-include-dirs=$PWD/qws/include/ --extra-lib-dirs=$PWD/qws/bin/ --disable-shared
$ cd examples/
$ LD_LIBRARY_PATH=qws/bin/ ghc -package-db ../.cabal-sandbox/x86_64-linux-ghc-7.8.4-packages.conf.d/ -Iqws/include -lqtc_core  -Lqws/bin -lqtc_gui -lqtc_script -lqtc_network  -lqtc_opengl -lqtc_tools calculator.hs
$ LD_LIBRARY_PATH=../qws/bin/ ./calculator
```

Because this library includes C++ code, it needs additional tools. We are in
the process of documenting that. Please, help us detail those instructions.

# Windows and MacOSX

This library is known to compile and work on Windows and MacOSX. Unfortunately,
I do not have the time to debug the installation process for those platforms
right now. If you can try it on those platforms and describe how you did it, please
open a github issue with the details (or incorporate the steps to this file).
