# User Guide

## Prerequisites

- A C compiler such as `gcc`
- Git (to clone the repository or use it as a template)

## First Steps

1. Create a new repository from this template by clicking **Use this template** on the [GitHub repository page](https://github.com/Stephenson-Software/c-project-template), or clone it directly:
   ```
   git clone https://github.com/Stephenson-Software/c-project-template.git
   ```
2. Open the project in your editor or IDE.

## Common Scenarios

### Compiling and Running

Compile the project with `gcc`:

```bash
gcc projectTemplate.c -o projectTemplate.exe
```

Run the compiled program:

```bash
./projectTemplate.exe
```

You should see the following output:

```
Hello World!
```

### Using the Compile-and-Run Script

A convenience script (`cr.sh`) is provided that compiles and runs the project in one step:

```bash
./cr.sh
```

### Using the Dev Container

If you use VS Code, you can develop inside a pre-configured container:

1. Install [Docker Desktop](https://www.docker.com/products/docker-desktop) and [VS Code](https://code.visualstudio.com/).
2. Install the [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension.
3. Open the repository in VS Code and reopen in the container when prompted.

### Customising the Template

- Modify the code in the `main()` function to begin building your application.

#### Changing the Program's Output

`.github/workflows/build.yml` asserts that the compiled program prints exactly `Hello World!`, so that a program which compiles but prints nothing cannot pass CI. Once you change what `main()` prints, update the `expected` value in that workflow's "Run and assert output" step to match — or replace the assertion with one that suits your own program — otherwise CI will fail on the new output. `README.md` and the "Compiling and Running" section above also quote `Hello World!`.

#### Renaming the Source File

Renaming `projectTemplate.c` also changes the name of the compiled output, and ten files hardcode one or both of those names. Update all of them in the same commit, or the build, the ignore rule, or CI will be left pointing at a file that no longer exists:

| File | What to update |
|------|----------------|
| `cr.sh` | The compile and run lines |
| `USER_GUIDE.md` | The compile and run commands in "Compiling and Running" above |
| `.gitignore` | The ignored artifact name, so the new binary is not committed |
| `.github/workflows/build.yml` | The compile and run steps |
| `.github/workflows/release.yml` | The compile step and the `files:` upload artifact |
| `README.md` | The installation step, and the Linux/macOS and Windows testing sections |
| `CONTRIBUTING.md` | The getting-started compile step, and both testing sections |
| `COMMANDS.md` | The Compile and Run entries |
| `CONFIG.md` | The quoted `cr.sh` compile command |
| `.github/copilot-instructions.md` | The Project Structure entry |

Two of these are worth special attention. `.gitignore` ignores exactly one name, so until it is updated the newly named binary is untracked and unignored, and the next `git add -A` commits a compiled binary. `.github/workflows/release.yml` only runs when a release is created, so a mismatch there is not discovered until a release is cut.

Afterwards, recompile and run to confirm the rename is complete:

```bash
./cr.sh
```
