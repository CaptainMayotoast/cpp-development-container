# Building the Docker image from Dockerfile

## Quickstart

Run `assemble_images_docker.sh`.  

For use with [this](https://github.com/CaptainMayotoast/python-cpp-ascii-art) C++ project.

## Summary

1. `Dockerfile.meson-build` is the amalgamation of supporting containers and is what is used to build a Meson + Ninja C++ project.

2. `assemble_images[buildah|docker].sh` will build all containers, starting with containers that have no "dependency" all the way up to `Dockerfile.meson-build` which has all other containers (i.e. `cmake_image`, etc) as a dependency.
> Note: if using `buildah`, include `unqualified-search-registries = ["docker.io"]` at the top of `/etc/containers/registries.conf` ([reference](https://github.com/containers/podman/issues/16096#issuecomment-1272552143)).

3. `build.sh` is used as `Dockerfile.meson-build`'s entry point script and allows the user to treat said container as an executable, essentially.  The script has also been adapted for VS Code + container development usage.
