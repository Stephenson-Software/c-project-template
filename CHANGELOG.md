# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

## [Unreleased]

### Added

- README.md with full project documentation
- CONTRIBUTING.md with contribution guidelines
- USER_GUIDE.md with getting-started guide
- COMMANDS.md with build and run commands reference
- CONFIG.md with configuration guide
- CHANGELOG.md
- GitHub Actions CI workflow (`.github/workflows/build.yml`)
- GitHub Actions release workflow (`.github/workflows/release.yml`)
- GitHub Copilot instructions (`.github/copilot-instructions.md`)
- LICENSE (Stephenson Software Non-Commercial License)

### Changed

- USER_GUIDE.md now lists every file that must be updated when the source file is renamed, rather than naming only `cr.sh`
- CONFIG.md now documents all three files in `.vscode/` — `settings.json`, `c_cpp_properties.json`, and `launch.json` — instead of mentioning `settings.json` alone
- The CI workflow now asserts that the compiled program prints `Hello World!`, rather than checking only its exit status
- USER_GUIDE.md now explains that changing the program's output requires updating the CI assertion
- CONFIG.md now documents the `name` key of `.devcontainer/devcontainer.json`, the only top-level key it previously omitted
- The CI workflow now runs `./cr.sh` as documented, so a `cr.sh` that is not executable or exits non-zero fails the build
- README.md's Documentation list now links CHANGELOG.md alongside the user, commands, and configuration guides
- README.md, USER_GUIDE.md, COMMANDS.md, and CONTRIBUTING.md now state that `cr.sh` is a POSIX shell script that needs Git Bash, WSL, or a similar shell on Windows, rather than offering `./cr.sh` directly after the Windows `cmd` instructions with no caveat
- USER_GUIDE.md now explains that a new `.c` file must be added to the `gcc` line in `cr.sh` and both workflows
- CONTRIBUTING.md's Testing section now links the expected output and states that CI asserts it
- CONFIG.md now documents `C_Cpp_Runner.enableWarnings`, the `.vscode/settings.json` key that controls whether the `C_Cpp_Runner.warnings` flags are passed, and states that neither workflow passes those flags, rather than referring to a single CI workflow
- Both workflows now use `actions/checkout@v7`, and the release workflow uses `softprops/action-gh-release@v3`; both target Node.js 24, replacing majors that targeted the deprecated Node.js 20

### Fixed

- `cr.sh` is now tracked as executable and carries a `#!/bin/sh` shebang, so the `./cr.sh` invocation documented in README.md, USER_GUIDE.md, COMMANDS.md, and CONTRIBUTING.md no longer fails with `Permission denied` on a fresh clone
- `cr.sh` now stops with a non-zero exit status when compilation fails, instead of running a stale `projectTemplate.exe` from a previous build and exiting `0`
- CONTRIBUTING.md and `.github/workflows/build.yml` now refer to `main`, the repository's default branch, instead of a `develop` branch that does not exist, so `git checkout develop` no longer fails for contributors following the guide
- CONTRIBUTING.md's Questions section now points to GitHub issues only, instead of GitHub Discussions, which are not enabled for this repository
- CONTRIBUTING.md no longer says issues are grouped into milestones representing upcoming releases; the repository has no milestones, and no issue has been assigned one
- CONFIG.md no longer describes `-Wall` as enabling all warnings; it enables the most common ones, and `-Wextra` and `-Wpedantic` add more
- README.md's Installation steps, USER_GUIDE.md, and COMMANDS.md now give the Windows `cmd` form of the run command, `projectTemplate.exe`, so USER_GUIDE.md's advice to use "the commands above" on Windows no longer leads to `./projectTemplate.exe`, which `cmd` does not accept
- README.md, USER_GUIDE.md, and CONTRIBUTING.md now include the `cd c-project-template` step after cloning, so the documented compile command no longer fails with `No such file or directory` when run straight after `git clone`
- CONFIG.md now states that a compiler flag added to `cr.sh` does not reach `.github/workflows/build.yml` or `.github/workflows/release.yml`, so a flag the program needs in order to build must be added there too, instead of implying that editing `cr.sh` is sufficient
- USER_GUIDE.md and CONTRIBUTING.md now list `gcc` as the requirement, matching README.md, instead of any C compiler; `cr.sh`, the workflows, and every documented command invoke `gcc` by name

## [1.0.0] – 2022-11-04

### Added

- Initial C project template with "Hello World" program (`projectTemplate.c`)
- Compile-and-run script (`cr.sh`)
- VS Code dev container configuration
- VS Code editor settings
