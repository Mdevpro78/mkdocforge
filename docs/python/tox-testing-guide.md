# 🧪 Python Testing with Tox

> A comprehensive guide to testing Python packages across multiple environments

## Tox Config Reference

```ini

{% include 'tox.ini' %}
```

## 🚀 Quick Start

### Installation

```bash
pip install tox
```

### Basic Usage

```bash
# Run tests in all environments defined in tox.ini
tox

# Run tests in a specific environment
tox -e py311
```

## 📚 Documentation Testing

> Ensure your docs build correctly before deployment

### 🔍 Running Documentation Checks

Use these commands to test your documentation builds:

```bash
# Build docs with Python 3.11 (verbose mode with colored output)
tox -e docs-py311 -v --colored yes

# Build docs with Python 3.12 (verbose mode with colored output)
tox -e docs-py12 -v --colored yes
```

| 🏷️ Flag         | Description                      |
| --------------- | -------------------------------- |
| `-e`            | Specifies the environment to run |
| `-v`            | Verbose output mode              |
| `--colored yes` | Enables colored terminal output  |

## 🔄 Testing Flow

### 1️⃣ Setup

Before running tox, ensure you have the following installed:

- Python versions 3.10, 3.11, and 3.12 (installed and available in your PATH)
- tox (`pip install tox`)

### 2️⃣ Understanding Our Configuration

Our tox.ini file is configured to:

- Test against Python 3.10, 3.11, and 3.12
- Install all necessary dependencies
- Build the documentation to verify it renders correctly
- Run any tests (when uncommented)

### 3️⃣ Running Tests

#### Basic Execution

To run tests across all configured Python versions:

```bash
tox
```

#### Testing Specific Python Version

To test against a specific Python version:

```bash
tox -e py310  # Test with Python 3.10
tox -e py311  # Test with Python 3.11
tox -e py312  # Test with Python 3.12
```

#### Documentation Testing Only

To verify only the documentation builds:

```bash
tox -e docs
```

### 4️⃣ Interpreting Results

- Tox will create separate virtual environments for each Python version
- For each environment, tox will:
    - Install dependencies
    - Run the configured commands
    - Report success or failure
- A summary is displayed after all tests complete

## 🔧 Common Options

| Option       | Description                    | Example              |
| ------------ | ------------------------------ | -------------------- |
| `-e ENV`     | Run only specified environment | `tox -e py311,py312` |
| `-r`         | Recreate virtual environments  | `tox -r`             |
| `-v`         | Verbose mode                   | `tox -v`             |
| `--parallel` | Run environments in parallel   | `tox --parallel`     |
| `--no-deps`  | Skip dependency installation   | `tox --no-deps`      |

## 🛠️ Troubleshooting

| Issue                      | Solution                       |
| -------------------------- | ------------------------------ |
| Environment creation fails | Run `tox -r` to recreate       |
| Missing dependencies       | Check pyproject.toml extras    |
| PyPI issues                | Try `--offline` mode           |
| Failed tests               | Check `.tox/*/log/*.log` files |

## ⚙️ Tox Commands Reference

| Command      | Description                                             |
| ------------ | ------------------------------------------------------- |
| `tox`        | Run tests in all environments                           |
| `tox -e ENV` | Run tests in specific environment (e.g.,`tox -e py311`) |
| `tox -r`     | Recreate the test environments                          |
| `tox -l`     | List all available test environments                    |
| `tox -p`     | Run tests in parallel                                   |
| `tox --help` | Show help information                                   |

## 🔗 Resources

### Official Documentation

- [Tox Documentation](https://tox.wiki/en/latest/)
- [Tox GitHub Repository](https://github.com/tox-dev/tox)
- [Tox Quick Start Guide](https://tox.wiki/en/latest/user_guide.html)

### Additional Learning Resources

- [Python Testing with tox](https://christophergs.com/python/2020/04/12/python-tox-why-use-it-and-tutorial/)
- [Real Python - Python Testing with tox](https://realpython.com/python-testing/)
- [TestPyPI](https://test.pypi.org/) - For testing package distribution

### Community Support

- [Tox Issues on GitHub](https://github.com/tox-dev/tox/issues)
- [Python Testing Discourse](https://discuss.python.org/c/testing/18)
- [Stack Overflow - Tox Tag](https://stackoverflow.com/questions/tagged/tox)

## 🔄 Integration with CI/CD

Tox works seamlessly with continuous integration systems. Example configuration for GitHub Actions:

{% raw %}

```yaml
[[include '../examples/yaml/github-actions-example.yaml']]
```

{% endraw %}

## 🚫 Common Issues and Solutions

- **Missing Python version**: Ensure all Python versions are installed and in PATH
- **Dependency conflicts**: Check `pyproject.toml` for compatibility with all Python versions
- **Environment reuse**: Use `tox -r` to recreate environments if you suspect cached issues
- **Slow test execution**: Use `tox -p` for parallel execution of test environments

## 📊 Best Practices

- Keep tox environments focused on specific tasks
- Use factors to avoid duplicating configurations
- Set up CI/CD integration for automated testing
- Maintain a comprehensive test suite to ensure package quality
- Document your tox configuration for contributors

## 🏁 Conclusion

Tox provides a powerful way to ensure your code works across different Python environments. By automating the testing process, we can maintain compatibility and catch issues early in the development cycle.

For any questions or issues with the tox configuration, please contact the project maintainers.
