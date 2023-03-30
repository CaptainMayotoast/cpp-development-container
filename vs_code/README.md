# VS Code container development

These files exist on the host, then VS Code ingests them.

- `c_cpp_properties.json` lives in `.vscode`
- `devcontainer.json` lives in `.devcontainer`
- `Dockerfile.vscode` lives in `.devcontainer`
- `env_setup.sh` lives in `.devcontainer`
- `.bashrc` lives in `.devcontainer`

## `c_cpp_properties.json`

Option

```bash
"compileCommands": "/build/release/compile_commands.json"
```

enables VS Code to configure Intellisense via the release build's compile_commands.json file.

This file ought to be placed within `.vscode` on the same level as `.devcontainer`, which is directly under the root development folder. 

## `devcontainer.json`

The layout changed a bit recently for this file, so it has been revised to work again.

Configure `docker run` arguments here, as well as specify a folder bind mount for source code.

## `Dockerfile.vscode`

Specifies user specific settings.  VS Code + containers is very host user centric.  Update `ARG`s at the top with specific settings.

## `env_setup.sh`

Anything, like custom CLI prompt formats, etc, should be specified here.

## `.bashrc`

Specify any functions or aliases, here.