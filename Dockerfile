# 🐳 MkDocForge Dockerfile

# Stage 1: Build Doxygen
FROM python:3.11-slim-bullseye AS doxygen-builder

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    cmake \
    flex \
    bison \
    git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /doxygen
RUN git clone https://github.com/doxygen/doxygen.git . && \
    mkdir build && \
    cd build && \
    cmake -G "Unix Makefiles" .. && \
    make && \
    make install

# Stage 2: Build MkDocForge
FROM python:3.11-slim-bullseye

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=1


# Copy Doxygen from builder
COPY --from=doxygen-builder /usr/local/bin/doxygen /usr/local/bin/doxygen

# Install system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    graphviz \
    && rm -rf /var/lib/apt/lists/*

# Install pip and uv
RUN pip install -U pip && pip install uv

# Set work directory
WORKDIR /app

# Copy project files
COPY pyproject.toml .

# Install project docs's dependencies
RUN uv pip install --no-cache --system -e .[docs]

# Verify Doxygen installation
RUN doxygen --version

EXPOSE 8000

# Start MkDocs server
CMD ["uv", "run", "mkdocs", "serve", "--dev-addr=0.0.0.0:8000"]
