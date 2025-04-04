# MkDocForge

<p align="center">
<a href="https://img.shields.io"><img src="https://img.shields.io/badge/Project%20Status-Active-green.svg" alt="Project Status: Active"></a>
<a href="https://www.python.org/downloads/"><img src="https://img.shields.io/badge/Python-3.11+-blue.svg" alt="Python Version"></a>
<a href="https://www.mkdocs.org"><img src="https://img.shields.io/badge/docs-mkdocs-blue.svg" alt="Documentation"></a>
<a href="LICENSE"><img src="https://img.shields.io/badge/License-MIT-yellow.svg" alt="License"></a>
</p>

<p align="center"><em>A comprehensive documentation platform powered by MkDocs with advanced features for technical documentation.</em></p>

## 📚 Overview

MkDocForge is a powerful documentation platform built on top of MkDocs that provides enhanced features for creating beautiful, functional, and comprehensive technical documentation. It combines the simplicity of Markdown with advanced capabilities like versioned documentation, code documentation via Doxygen integration, diagrams, and a rich set of plugins to create professional documentation sites.

## 🎯 Purpose

MkDocForge addresses common documentation challenges by providing:

- **Unified Documentation**: Combine API references, user guides, architecture decisions, and more in one platform
- **Versioned Documentation**: Track and maintain documentation across different software versions
- **Code Integration**: Automatically generate API documentation from source code comments
- **Rich Media Support**: Easily embed diagrams, images, and interactive elements
- **Collaborative Workflow**: Git-based workflow for documentation-as-code practices

## ✨ Key Features

- 🎨 **Material Design Theme**: Beautiful, responsive documentation with light/dark mode
- 📊 **Diagram Support**: PlantUML integration for architectural and flow diagrams
- 🔄 **Versioned Documentation**: Maintain docs for multiple software versions with Mike
- 📝 **Markdown Extensions**: Enhanced markdown with admonitions, tabs, code annotations
- 🧩 **Plugin Ecosystem**: Extensive collection of plugins for advanced functionality
- 🐳 **Docker Support**: Containerized environment for consistent documentation builds
- 🔍 **Full-Text Search**: Powerful search capabilities across documentation
- 💻 **Code Documentation**: Doxygen integration for automatic code documentation

## 🚀 Getting Started

### Prerequisites

- Python 3.11+
- pip, uv, or another Python package manager

### Quick Installation

```bash
# Clone the repository
git clone https://github.com/yourusername/mkdocforge.git
cd mkdocforge

# Install dependencies using UV (recommended)
make uv_sync_docs

# Or using pip
pip install -e .[docs]
```

### Running Locally

```bash
# Start the development server
make uv_mkdoc_serve

# Or using UV directly
uv run mkdocs serve
```

### Using Docker

MkDocForge can be easily run using Docker:

```bash
# Build the Docker image
make docker-build

# Start the container
make docker-up

# View logs
make docker-logs

# Stop the container
make docker-down
```

Alternatively, you can use Docker Compose directly:

```bash
# Build and start in one command
docker compose up

# Or build and start in detached mode
docker compose up -d
```

Once running, access the documentation at [http://localhost:8000](http://localhost:8000).

## 📁 Project Structure

```
.
├── docs/                   # Documentation source files
│   ├── architecture/      # Architecture decision records
│   ├── blog/              # Blog posts
│   ├── examples/          # Example configurations and code
│   ├── git/               # Git workflow documentation
│   ├── glossary/          # Project terminology
│   ├── python/            # Python development guides
│   └── ...                # Other documentation sections
├── .github/               # GitHub workflows and CI/CD
├── scripts/               # Utility scripts
├── Dockerfile             # Docker configuration
├── mkdocs.yml             # MkDocs configuration
└── pyproject.toml         # Python project configuration
```

## 🔧 Configuration

MkDocForge is highly configurable through the `mkdocs.yml` file. See the [MkDocs documentation](https://www.mkdocs.org/) for basic configuration and explore our examples for advanced setups.

## 🤝 Contributing

Contributions are welcome! Please check out our [Contributing Guide](docs/contributing.md) for guidelines on how to make contributions.

## 👥 Target Audience

- **Development Teams**: Create comprehensive documentation for software projects
- **Technical Writers**: Leverage markdown with powerful extensions for technical content
- **Open Source Projects**: Provide high-quality documentation with minimal overhead
- **Organizations**: Maintain consistent documentation standards across projects

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🔗 Links

- [Repository](https://github.com/Mdevpro78/mkdocforge)
- [Documentation](https://mdevpro78.github.io/mkdocforge/)
- [MkDocs Official Site](https://www.mkdocs.org/)
- [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/)
