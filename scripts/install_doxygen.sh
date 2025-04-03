#!/bin/bash

# install_doxygen.sh - Script to install Doxygen from source
# Based on the Dockerfile commands from MkDocForge

set -e  # Exit immediately if a command exits with a non-zero status

echo "=== Installing Doxygen from source ==="

# Check if running as root
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root or with sudo privileges."
    exit 1
fi

# Install dependencies
echo "Installing dependencies..."
apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    cmake \
    flex \
    bison \
    git \
    && rm -rf /var/lib/apt/lists/*

# Create temporary directory for Doxygen
TEMP_DIR=$(mktemp -d)
echo "Created temporary directory: $TEMP_DIR"

# Clone and build Doxygen
echo "Cloning Doxygen repository..."
cd "$TEMP_DIR"
git clone https://github.com/doxygen/doxygen.git .

echo "Building Doxygen..."
mkdir build
cd build
cmake -G "Unix Makefiles" ..

echo "Compiling Doxygen..."
make

echo "Installing Doxygen..."
make install

# Clean up
echo "Cleaning up..."
cd /
rm -rf "$TEMP_DIR"

# Verify installation
if command -v doxygen >/dev/null 2>&1; then
    echo "=== Doxygen installation successful ==="
    doxygen --version
else
    echo "=== Doxygen installation failed ==="
    exit 1
fi
