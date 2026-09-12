# Contributing

## Thank You

Thank you for your interest in contributing to C Project Template! This guide will help you get started.

## Links

- [Repository](https://github.com/Stephenson-Software/c-project-template)

## Requirements

- A GitHub account
- Git installed on your local machine
- A C compiler (e.g. `gcc`)
- A text editor or IDE

## Getting Started

1. [Sign up for GitHub](https://github.com/signup) if you don't have an account.
2. Fork the repository by clicking **Fork** at the top right of the repo page.
3. Clone your fork: `git clone https://github.com/<your-username>/c-project-template.git`
4. Open the project in your editor or IDE.
5. Compile the project: `gcc projectTemplate.c -o projectTemplate.exe`
   If you encounter errors, please open an issue.

## Identifying What to Work On

### Issues

Work items are tracked as [GitHub issues](https://github.com/Stephenson-Software/c-project-template/issues).

### Milestones

Issues are grouped into [milestones](https://github.com/Stephenson-Software/c-project-template/milestones) representing upcoming releases.

## Making Changes

1. Make sure an issue exists for the work. If not, create one.
2. Switch to `main` and update it: `git checkout main && git pull`
3. Create a branch: `git checkout -b <branch-name>`
4. Make your changes.
5. Test your changes.
6. Commit: `git commit -m "Description of changes"`
7. Push: `git push origin <branch-name>`
8. Open a pull request against `main`, link the related issue with `#<number>`.
9. Address review feedback.

## Testing

Compile and run the project to verify your changes:

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

You can also use the provided compile-and-run script:

```bash
./cr.sh
```

## Questions

Open a GitHub Discussion or issue in this repository.
