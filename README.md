## Building the Docker image from Dockerfile

1. `docker build -f Dockerfile.meson-build -t meson-build:latest .`

## Summary

1. `Dockerfile.meson-build` is the amalgamation of supporting containers and is what is used to build a Meson + Ninja C++ project.

2. `assemble_images.sh` will build all containers, starting with containers that have no "dependency" all the way up to `Dockerfile.meson-build` which has all other containers (i.e. `cmake_image`, etc) as a dependency.

3. `build.sh` is used as `Dockerfile.meson-build`'s entry point script and allows the user to treat said container as an executable, essentially.  The script has also been adapted for VS Code + container development usage.

4. Folder `vs_code` contains useful files for VS Code + container development.  The README within should specify what goes where.  Hand updating a few of those files with a username that exists on the host (i.e. the one currently logged into) is necessary.