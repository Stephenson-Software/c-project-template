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

Editor settings are defined in `.vscode/settings.json`. Adjust these to match your preferences.

## Compiler Options

The default compile command used in `cr.sh` is:

```bash
gcc projectTemplate.c -o projectTemplate.exe
```

You can customise compiler flags by editing `cr.sh` or passing additional arguments to `gcc` directly. Common options include:

- `-Wall` – Enable all warnings
- `-g` – Include debug information
- `-O2` – Optimise for performance
