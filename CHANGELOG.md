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

### Changed

- USER_GUIDE.md now lists every file that must be updated when the source file is renamed, rather than naming only `cr.sh`
- CONFIG.md now documents all three files in `.vscode/` — `settings.json`, `c_cpp_properties.json`, and `launch.json` — instead of mentioning `settings.json` alone
- The CI workflow now asserts that the compiled program prints `Hello World!`, rather than checking only its exit status
- USER_GUIDE.md now explains that changing the program's output requires updating the CI assertion

### Fixed

- `cr.sh` is now tracked as executable and carries a `#!/bin/sh` shebang, so the `./cr.sh` invocation documented in README.md, USER_GUIDE.md, COMMANDS.md, and CONTRIBUTING.md no longer fails with `Permission denied` on a fresh clone

## [1.0.0] – 2022-11-04

### Added

- Initial C project template with "Hello World" program (`projectTemplate.c`)
- Compile-and-run script (`cr.sh`)
- VS Code dev container configuration
- VS Code editor settings
- LICENSE (Stephenson Software Non-Commercial License)
