# Pre-commit Configuration

## ⚙️ Overview

This document outlines the pre-commit hooks used in our development workflow. These hooks run automatically before each commit to ensure code quality, consistency, and security.

## 🔧 Installation

```bash
pip install pre-commit
pre-commit install
```

## 📦 Dependencies

Our pre-commit configuration uses the following tools:

### Code Formatting

| Tool                      | Version  | Purpose                                                  |
| ------------------------- | -------- | -------------------------------------------------------- |
| 🎨 **black**              | >=25.1.0 | Python code formatter that enforces a consistent style   |
| ✂️ **add-trailing-comma** | >=3.1.0  | Automatically adds trailing commas to calls and literals |
| 📄 **mdformat**           | >=0.7.22 | Markdown formatter for consistent documentation style    |

### Code Quality & Linting

| Tool            | Version  | Purpose                                                |
| --------------- | -------- | ------------------------------------------------------ |
| 🐛 **ruff**     | >=0.10.0 | Fast Python linter and code transformer                |
| ⬆️**pyupgrade** | >=3.19.1 | Automatically upgrades syntax to newer Python versions |
| 🐚**bashate**   | >=2.1.1  | Linter for bash scripts                                |

### Type Checking

| Tool                  | Version           | Purpose                             |
| --------------------- | ----------------- | ----------------------------------- |
| 🔍 **mypy**           | >=1.15.0          | Static type checker for Python      |
| 🔗 **types-requests** | >=2.32.0.20250306 | Type stubs for the requests library |

### Validation & Security

| Tool                          | Version | Purpose                                                |
| ----------------------------- | ------- | ------------------------------------------------------ |
| 🛡 **safety**                  | >=3.3.1 | Checks dependencies for known security vulnerabilities |
| ✅ **validate-pyproject**     | >=0.24  | Validates pyproject.toml configuration                 |
| 📃 **openapi-spec-validator** | >=0.7.1 | Validates OpenAPI specifications                       |

### Git Workflow

| Tool              | Version | Purpose                                            |
| ----------------- | ------- | -------------------------------------------------- |
| 🔖 **pre-commit** | >=4.1.0 | Framework for managing git pre-commit hooks        |
| 🏷 **commitizen**  | >=4.4.1 | Standardizes commit messages following conventions |

## 🚀 Benefits

- **Consistency**: Enforces coding standards across the team
- **Quality**: Catches common mistakes and anti-patterns early
- **Security**: Identifies potential vulnerabilities
- **Efficiency**: Automates routine code quality tasks

> 💡 **Best Practice**
>
> Run the following command after updating dependencies or changing hook configurations to ensure all files comply with current standards:
>
> ```bash
> uv run pre-commit run --all-files -v --color always
> ```
