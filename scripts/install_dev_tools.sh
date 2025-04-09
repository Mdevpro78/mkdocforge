#!/bin/bash
#
# Development Tools Installation Script for Vagrant
# Installs common development tools

# Error handling
set -e
trap 'echo "Error occurred at line $LINENO. Command: $BASH_COMMAND"' ERR

# Log function
log() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1"
}

log "Starting installation of development tools"

# Install development tools
log "Installing development tools"
sudo apt-get install -y \
    build-essential \
    git \
    curl \
    wget \
    unzip \
    zip \
    htop \
    iotop \
    iftop

log "Development tools installation completed successfully"
