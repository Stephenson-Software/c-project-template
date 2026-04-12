# C Project Template

## Description

C Project Template is a minimal template for starting new C projects. It provides a simple "Hello World" program, a compile-and-run script, and a VS Code dev container configuration to get you up and running quickly.

## Installation

1. Click **Use this template** on the [GitHub repository page](https://github.com/Stephenson-Software/c-project-template) to create a new repository from this template, or clone it directly:
   ```
   git clone https://github.com/Stephenson-Software/c-project-template.git
   ```
2. Ensure you have `gcc` installed on your system.
3. Compile the project:
   ```
   gcc projectTemplate.c -o projectTemplate.exe
   ```
4. Run the compiled program:
   ```
   ./projectTemplate.exe
   ```

## Usage

### Documentation

- [User Guide](USER_GUIDE.md) – Getting started and common scenarios
- [Commands Reference](COMMANDS.md) – Build and run commands
- [Configuration Guide](CONFIG.md) – Project configuration options

## Support

### Experiencing a bug?

Please fill out a bug report [here](https://github.com/Stephenson-Software/c-project-template/issues/new).

- [Known Bugs](https://github.com/Stephenson-Software/c-project-template/issues?q=is%3Aissue+is%3Aopen+label%3Abug)

## Contributing

- [CONTRIBUTING.md](CONTRIBUTING.md)

## Testing

### Building and Running

Linux / macOS:

```bash
gcc projectTemplate.c -o projectTemplate.exe
./projectTemplate.exe
```

Windows (with MinGW or similar):

```bat
gcc projectTemplate.c -o projectTemplate.exe
projectTemplate.exe
```

If you see `Hello World!` printed to the console, the build was successful.

## Development

### Dev Container

A VS Code dev container is provided for development.

#### Setup

1. Install [Docker Desktop](https://www.docker.com/products/docker-desktop) and [VS Code](https://code.visualstudio.com/).
2. Install the [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension.
3. Open the repository in VS Code.
4. When prompted, click **Reopen in Container** (or run the command **Dev Containers: Reopen in Container**).

#### Compile and Run Script

Use the provided `cr.sh` script to compile and run in one step:

```bash
./cr.sh
```

## Authors and Acknowledgement

### Developers

| Name | Main Contributions |
|------|--------------------|
| Daniel McCoy Stephenson | Creator and maintainer |

## License

This project is licensed under the [Stephenson Software Non-Commercial License (Stephenson-NC)](LICENSE).

See the [LICENSE](LICENSE) file for full details.

## Project Status

This project is in active development as a template for new C projects.
