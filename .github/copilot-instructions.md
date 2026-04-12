# Copilot Instructions

This repository follows the DPC (Dans Plugins Community) conventions defined at
https://github.com/Dans-Plugins/dpc-conventions. Read those conventions before
making any changes.

## Technology Stack

- Language: C
- Compiler: gcc
- Build script: `cr.sh` (compile and run)
- Dev environment: VS Code with Dev Containers

## Project Structure

- `projectTemplate.c` – Main C source file
- `cr.sh` – Shell script to compile and run the project
- `.devcontainer/` – VS Code dev container configuration
- `.vscode/` – VS Code editor settings
- `.github/workflows/` – CI and release automation

## Coding Conventions

- Keep the template minimal and easy to understand.
- Use standard C (`stdio.h`, etc.) for maximum portability.
- Maintain the `cr.sh` script to reflect any changes to source file names or compiler flags.

## Contribution Workflow

- Branch from `develop` for all changes.
- Open a pull request against `develop`, not `main`.
- Reference the related GitHub issue in every pull request description.
