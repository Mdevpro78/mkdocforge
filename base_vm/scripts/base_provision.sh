#!/bin/bash
#
# Development Environment Setup Script for Ubuntu 24.04 (Noble)
# For use with Vagrant
# Following official Docker installation guide:
# https://docs.docker.com/engine/install/ubuntu/

# Error handling
set -e
trap 'echo "Error occurred at line $LINENO. Command: $BASH_COMMAND"' ERR

# Log function
log() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1"
}

log "Beginning setup for Ubuntu 24.04 development environment"

# Update and upgrade system
log "Updating package repositories"
sudo apt-get update
log "Upgrading existing packages"
sudo DEBIAN_FRONTEND=noninteractive apt-get upgrade -y

# Install development tools
log "Installing development tools and libraries"
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y \
    linux-headers-$(uname -r) \
    build-essential \
    dkms \
    tree \
    gcc \
    make \
    automake \
    cmake \
    libssl-dev \
    libnghttp2-dev

# Install Docker prerequisites
log "Installing Docker prerequisites"
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y \
    ca-certificates \
    curl \
    gnupg

# Add Docker's official GPG key (official method)
log "Adding Docker's official GPG key"
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg \
    -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add Docker repository (official method)
log "Adding Docker repository"
echo \
    "deb [arch=$(dpkg --print-architecture) \
    signed-by=/etc/apt/keyrings/docker.asc] \
    https://download.docker.com/linux/ubuntu \
    $(. /etc/os-release && echo \
    "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
    sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update apt repositories with Docker repo
log "Updating package lists with Docker repository"
sudo apt-get update

# Install Docker packages (official method)
log "Installing Docker Engine and related tools"
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y \
    docker-ce \
    docker-ce-cli \
    containerd.io \
    docker-buildx-plugin \
    docker-compose-plugin

# Configure Docker for Vagrant user
log "Configuring Docker user permissions"
sudo groupadd docker 2>/dev/null || true

# In Vagrant, use 'vagrant' user, otherwise use current user
if id vagrant &>/dev/null; then
    DOCKER_USER="vagrant"
else
    DOCKER_USER=$USER
fi

log "Adding user '$DOCKER_USER' to docker group"
sudo usermod -aG docker $DOCKER_USER

# Start and enable Docker service
log "Enabling and starting Docker service"
sudo systemctl enable docker
sudo systemctl start docker

# Verify Docker installation
log "Verifying Docker installation"
if sudo docker run --rm hello-world > /dev/null 2>&1; then
    log "Docker installation verified successfully"
else
    log "WARNING: Docker verification failed."
    log "Please check Docker installation manually."
fi

log "Installation complete!"
log "You may need to log out and back in for Docker group changes to" \
    " take effect."
log "Alternatively, run 'newgrp docker' to apply group changes"
log "in current session."
