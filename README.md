## A C++ containerized development environment

### Overview

- Based on the GCC 14.2 [image](https://hub.docker.com/_/gcc/).
- Boost is built (from another image, since it is large) and headers and libraries copied over to the `meson-build` image.
- `ccache` is installed, since it is [autodetected](https://mesonbuild.com/Feature-autodetection.html) by Meson.
- `cmake` is downloaded and placed in a bin folder.
- The `mold` [linker](https://github.com/rui314/mold) is built and installed for fast linking.
- `muon`, a C99 implementation of Mesonbuild, is included for future use cases.
