# Contributing to DocForge

> Guidelines for contributing to this project

## 🚀 Getting Started

Thank you for considering contributing to DocForge! This document outlines the process for contributing to the project and addresses common questions.

## 📝 Code of Conduct

This project adheres to a Code of Conduct that all participants are expected to follow. Please read [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md) before contributing.

## 🔄 Development Workflow

### Setting Up the Development Environment

1. **Fork the repository** and clone your fork locally

2. **Install dependencies**:

    ```bash
    make setup_dev
    ```

3. **Create a branch** for your changes:

    ```bash
    git checkout -b feature/your-feature-name
    ```

### Making Changes

1. Make your changes following our coding standards

2. Write tests for your changes

3. Run tests to ensure everything passes:

    ```bash
    make uv_run_tests
    ```

4. Update documentation as needed

### Submitting Changes

1. Commit your changes using conventional commit messages
2. Push to your fork
3. Submit a pull request

## 📊 Coding Standards

- Follow PEP 8 guidelines

- Use type hints

- Write docstrings in the Google format

- Ensure code passes our linters:

    ```bash
    make uv_sync_lint
    ```

## 📚 Documentation

Updates to documentation are just as important as code changes. Please:

- Update the docs to reflect your changes

- Add examples where appropriate

- Use our documentation tools:

    ```bash
    make setup_docs
    make uv_mkdoc_build
    ```

## 🧪 Testing

- Write unit tests for new features
- Ensure existing tests continue to pass
- Aim for high test coverage

## 🔍 Review Process

1. A maintainer will review your PR
2. Changes may be requested
3. Once approved, your PR will be merged

## 📄 License

By contributing, you agree that your contributions will be licensed under the project's [MIT License](https://opensource.org/licenses/MIT).

---

Thank you for your contributions! 🙏
