# 🐳 Docker Setup Guide

> Comprehensive guide for running MkDocForge with Docker

## 🏗️ Project Structure

```plaintext
.
├── Dockerfile
├── docker-compose.yml
├── docs/
└── ...
```

## 🚀 Quick Start

### 1️⃣ Build and Run with Docker Compose

```bash
docker-compose up
```

### 2️⃣ Access the Documentation

Open your browser at [http://localhost:8000](http://localhost:8000)

## 🔧 Configuration Options

### Environment Variables

| Variable                  | Description              | Default |
| ------------------------- | ------------------------ | ------- |
| `PYTHONUNBUFFERED`        | Enable unbuffered output | `1`     |
| `PYTHONDONTWRITEBYTECODE` | Prevent .pyc files       | `1`     |

### Port Configuration

| Port | Description               |
| ---- | ------------------------- |
| 8000 | MkDocs development server |

## 🛠️ Common Commands

| Command                | Description                |
| ---------------------- | -------------------------- |
| `docker-compose up`    | Start the container        |
| `docker-compose up -d` | Start in detached mode     |
| `docker-compose down`  | Stop and remove containers |
| `docker-compose build` | Rebuild the image          |
| `docker-compose logs`  | View container logs        |

### 🛠️ Build and Run

```bash
# Build with progress output
docker compose -f docker-compose.yml build --progress=plain

# Start in detached mode
docker compose -f docker-compose.yml up -d
```

### 🔍 Monitoring and Inspection

```bash
# View container logs
docker compose -f docker-compose.yml logs -f

# List all containers
docker compose -f docker-compose.yml ps -a
```

### 🧹 Cleanup

```bash
# Stop and remove containers with volumes
docker compose -f docker-compose.yml down -v
```

> 💡 Tip: Use these commands to manage your MkDocForge container lifecycle efficiently

## 🔄 Development Workflow

1. Make changes to your documentation
2. Changes are automatically reloaded in the container
3. View updates in your browser

## 🧹 Cleanup

To remove all Docker artifacts:

```bash
docker-compose down --rmi all --volumes
```

## ⚙️ Customization

### Dockerfile

```dockerfile
[[ include "../../Dockerfile" ]]
```

### docker-compose.yml

```yaml
[[include "../../docker-compose.yml"]]
```

## 🐍 Python Docker Image Comparison

### 📊 Feature Matrix

| Feature             | `python:3.11-slim-bullseye` | `python:3.11-bullseye` | `python:3.11-alpine` |
| ------------------- | --------------------------- | ---------------------- | -------------------- |
| **Size**            | ~120MB                      | ~900MB                 | ~50MB                |
| **Base OS**         | Debian Slim                 | Debian                 | Alpine Linux         |
| **Package Manager** | apt                         | apt                    | apk                  |
| **Build Tools**     | Limited                     | Full                   | Minimal              |
| **Security**        | Good                        | Standard               | Excellent            |
| **Compatibility**   | High                        | Very High              | Medium               |

### 🎯 Use Cases

#### `python:3.11-slim-bullseye`

- 🏆 **Best for**: Production deployments
- ✅ **Pros**:
    - Small footprint
    - Good security
    - Wide compatibility
- ⚠️ **Cons**:
    - Limited system packages

#### `python:3.11-bullseye`

- 🏆 **Best for**: Development environments
- ✅ **Pros**:
    - Full Debian environment
    - Easy to use
    - Wide package availability
- ⚠️ **Cons**:
    - Large image size

#### `python:3.11-alpine`

- 🏆 **Best for**: Minimalist deployments
- ✅ **Pros**:
    - Smallest size
    - Excellent security
    - Musl libc
- ⚠️ **Cons**:
    - Potential compatibility issues
    - Limited package availability

### 🤔 Why We Chose `python:3.11-slim-bullseye`

1. **Optimal Balance**: Combines small size with good compatibility
2. **Security**: Regular security updates from Debian
3. **Efficiency**: Minimal overhead for production use
4. **Maintainability**: Easier to manage than Alpine

> 💡 **Tip**: Consider using multi-stage builds for even smaller final images

## 📚 Resources

| Resource                                                                      | Description             |
| ----------------------------------------------------------------------------- | ----------------------- |
| [Docker Documentation](https://docs.docker.com/)                              | Official Docker docs    |
| [Docker Compose Reference](https://docs.docker.com/compose/compose-file/)     | Compose file reference  |
| [MkDocs Docker Guide](https://www.mkdocs.org/user-guide/deploying-your-docs/) | MkDocs deployment guide |

> 💡 **Tip**: Use Docker volumes for persistent data and faster development cycles
