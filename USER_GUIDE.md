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

- Rename `projectTemplate.c` to match your project name.
- Update the `cr.sh` script to reflect the new file name.
- Modify the code in the `main()` function to begin building your application.
