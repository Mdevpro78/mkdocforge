<!-- markdownlint-disable MD043 -->

<!-- markdownlint-disable MD044 -->

<!-- markdownlint-disable MD046 -->

# :material-package: Rye Tools Reference Guide

> :material-package:{ .middle } A comprehensive guide to managing Python tools with Rye

[:material-github:{ .middle } Rye GitHub Repository](https://github.com/mitsuhiko/rye) · [:material-book:{ .middle } Official Documentation](https://rye-up.com/)

---

## :material-rocket-launch: Development Tools Installation

!!! tip "Quick Install Commands"

    Install development tools into your global Rye toolchain with ease.

### :material-palette: Code Formatting & Linting

```bash
# Install Black formatter with colorama support
rye tools install black --features colorama -p cpython@3.11.11 -f

# Install Ruff - the ultra-fast Python linter
rye tools install ruff -p cpython@3.11.11 -f

# Install Ruff Language Server for IDE integration
rye tools install ruff-lsp -p cpython@3.11.11 -f

# Install Radon for code complexity analysis
rye tools install radon -p cpython@3.11.11 -f
```

| Tool         | Repository                                                                               | Documentation                                                                                                   |
| ------------ | ---------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| **Black**    | [:material-github:{ .middle } psf/black](https://github.com/psf/black)                   | [:material-book:{ .middle } black.readthedocs.io](https://black.readthedocs.io/)                                |
| **Ruff**     | [:material-github:{ .middle } astral-sh/ruff](https://github.com/astral-sh/ruff)         | [:material-book:{ .middle } docs.astral.sh/ruff](https://docs.astral.sh/ruff/)                                  |
| **Ruff-LSP** | [:material-github:{ .middle } astral-sh/ruff-lsp](https://github.com/astral-sh/ruff-lsp) | [:material-book:{ .middle } docs.astral.sh/ruff](https://docs.astral.sh/ruff/integrations/#editor-integrations) |
| **Radon**    | [:material-github:{ .middle } rubik/radon](https://github.com/rubik/radon)               | [:material-book:{ .middle } radon.readthedocs.io](https://radon.readthedocs.io/)                                |

### :material-package-variant: Package Management

```bash
# Install uv - faster package installer
rye tools install uv -p cpython@3.11.11 -f

# Install pip - standard package installer
rye tools install pip -p cpython@3.11.11 -f
```

| Tool    | Repository                                                                   | Documentation                                                              |
| ------- | ---------------------------------------------------------------------------- | -------------------------------------------------------------------------- |
| **uv**  | [:material-github:{ .middle } astral-sh/uv](https://github.com/astral-sh/uv) | [:material-book:{ .middle } docs.astral.sh/uv](https://docs.astral.sh/uv/) |
| **pip** | [:material-github:{ .middle } pypa/pip](https://github.com/pypa/pip)         | [:material-book:{ .middle } pip.pypa.io](https://pip.pypa.io/)             |

#### UV Management Commands

```bash
# Sync development dependencies (--extra dev)
uv sync --extra dev

# Sync documentation dependencies (--extra docs)
uv sync --extra docs

# Sync testing dependencies (--extra test)
uv sync --extra test

# Run mkdocs build with detailed output
uv run mkdocs build -v
```

!!! tip "Using UV vs Rye"

    UV is significantly faster than pip for dependency resolution and installation. Use UV for faster builds in CI/CD pipelines and development environments.

!!! info "Learn More About Rye & UV"

    Learn about Rye and UV integration in Armin Ronacher's blog post [:material-link:{ .middle } Rye Grows with UV](https://lucumr.pocoo.org/2024/2/15/rye-grows-with-uv/).

### :material-language-rust: Rust Integration

```bash
# Install Maturin for Python/Rust bindings
rye tools install maturin -p cpython@3.11.11 -f
```

| Tool        | Repository                                                                   | Documentation                                                    |
| ----------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------- |
| **Maturin** | [:material-github:{ .middle } PyO3/maturin](https://github.com/PyO3/maturin) | [:material-book:{ .middle } maturin.rs](https://www.maturin.rs/) |

---

## :material-tools: Toolchain Management

!!! info "System Information"

    Useful commands to inspect your Rye installation.

```bash
# List installed Python versions
uv python list

# List available Rye toolchains
rye toolchain list

# List all installed tools with detailed information
rye tools list -sv
```

---

## :material-text-box: Command Format Reference

| Parameter        | Description                             | Example                |
| ---------------- | --------------------------------------- | ---------------------- |
| `--features`     | Specify optional features to install    | `--features colorama`  |
| `-p`             | Specify Python version                  | `-p cpython@3.11.11`   |
| `-f`             | Force installation (overwrite existing) | `-f`                   |
| `-v`             | Verbose output                          | `-v`                   |
| `--optional=dev` | Add dependency to optional dev group    | `--optional=dev uvenv` |
| `-sv`            | Show detailed (verbose) listing         | `-sv`                  |

!!! tip "Further Reading"

    For more detailed information on Rye commands and options, visit the [Rye documentation](https://rye-up.com/guide/basics/#commands).
