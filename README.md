Version 1.1.6.1 of the Qt4 bindings for Haskell, a set of Haskell bindings for the
Qt library from Trolltech.  There are no subtantial changes to the code, but it
now compiles with GHC 7.8.

There was a bug related to the Foreign Function Interface. In most cases that
could be resolved by importing Foreign.C.Types, but not always.  I introduced a
couple of extra changes to make things compile, but there is no guarantee that
they will work. Actually, I would expect them to break. Please, try them, and
if you can find a better solution, send a msg or a pull request.

Html Documentation for this project can be found in the 'doc' folder.
The qtHaskell User Guide includes comprehensive installation instructions.
See examples/ and demos/ for code examples.
