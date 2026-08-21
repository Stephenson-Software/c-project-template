# Configuration Guide

This project is a minimal C project template. It does not have a runtime configuration file.

## Dev Container Configuration

The dev container is configured in `.devcontainer/devcontainer.json`.

### image

**Type:** string
**Default:** `"mcr.microsoft.com/devcontainers/base:0-jammy"`
**Description:** The Docker image used for the dev container. Defaults to an Ubuntu Jammy-based image.

### remoteUser

**Type:** string
**Default:** `"vscode"`
**Description:** The user account used inside the container.

### customizations.vscode.extensions

**Type:** array of strings
**Default:** `["GitHub.copilot"]`
**Description:** VS Code extensions that are automatically installed in the dev container.

## VS Code Settings

Three files are provided in `.vscode/`. All of them are optional — the project compiles and runs with `gcc` alone — and any of them may be adjusted or deleted. Note that they configure editor extensions that the dev container does not install: `.devcontainer/devcontainer.json` installs only `GitHub.copilot`, so these files take effect only once the corresponding extensions are installed.

### `.vscode/settings.json`

Settings for the C/C++ Runner extension — every key is prefixed `C_Cpp_Runner.`. The keys most likely to be changed are:

#### C_Cpp_Runner.cCompilerPath

**Type:** string
**Default:** `"gcc"`
**Description:** The C compiler the extension invokes. Also set are `cppCompilerPath` (`"g++"`) and `debuggerPath` (`"gdb"`).

#### C_Cpp_Runner.warnings

**Type:** array of strings
**Default:** `["-Wall", "-Wextra", "-Wpedantic"]`
**Description:** Warning flags passed when the extension builds. These apply only to extension-driven builds — neither `cr.sh` nor the CI workflow passes them, so a build run from the command line will not report the same warnings.

#### C_Cpp_Runner.warningsAsError

**Type:** boolean
**Default:** `false`
**Description:** Whether the warnings above fail the build. Set to `true` to treat them as errors.

#### C_Cpp_Runner.cStandard

**Type:** string
**Default:** `""`
**Description:** The C standard to compile against. Empty means the compiler's own default is used.

### `.vscode/c_cpp_properties.json`

IntelliSense configuration for the Microsoft C/C++ extension.

#### configurations[].compilerPath

**Type:** string
**Default:** `"gcc"`
**Description:** The compiler IntelliSense uses to resolve system include paths.

#### configurations[].intelliSenseMode

**Type:** string
**Default:** `"windows-gcc-x64"`
**Description:** The platform and compiler variant IntelliSense emulates. The shipped value targets Windows; change it to `linux-gcc-x64` or `macos-gcc-x64` when working on those platforms, including inside the Ubuntu-based dev container described above.

#### configurations[].includePath

**Type:** array of strings
**Default:** `["${workspaceFolder}/**"]`
**Description:** Paths searched for headers. The default covers the whole workspace.

### `.vscode/launch.json`

A `cppdbg` debug configuration named "C/C++ Runner: Debug Session", used by the **Run and Debug** view.

#### configurations[].program

**Type:** string
**Default:** `"c:/projects/c-project-template/build/Debug/outDebug"`
**Description:** The executable to debug. The shipped value is a Windows-absolute path to an artifact the documented `gcc` build does not produce, so it must be pointed at your own compiled output before debugging will start — see [issue #3](https://github.com/Stephenson-Software/c-project-template/issues/3).

#### configurations[].cwd

**Type:** string
**Default:** `"c:/projects/c-project-template"`
**Description:** The working directory the program is launched in. As with `program`, the shipped value is a hardcoded absolute path rather than a workspace-relative one.

#### configurations[].miDebuggerPath

**Type:** string
**Default:** `"gdb"`
**Description:** The debugger binary. Debugging is more useful when the executable is compiled with `-g`; see Compiler Options below.

## Compiler Options

The default compile command used in `cr.sh` is:

```bash
gcc projectTemplate.c -o projectTemplate.exe
```

You can customise compiler flags by editing `cr.sh` or passing additional arguments to `gcc` directly. Common options include:

- `-Wall` – Enable all warnings
- `-g` – Include debug information
- `-O2` – Optimise for performance
