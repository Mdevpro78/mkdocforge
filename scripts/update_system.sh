#!/bin/bash
#
# System Update Script for Vagrant
# Updates and upgrades system packages

# Error handling
set -e
trap 'echo "Error occurred at line $LINENO. Command: $BASH_COMMAND"' ERR

# Log function
log() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1"
}

log "Starting system updates"

# Update package lists
log "Updating package lists"
sudo apt-get update

# Upgrade installed packages
log "Upgrading installed packages"
sudo DEBIAN_FRONTEND=noninteractive apt-get -y \
    -o Dpkg::Options::="--force-confdef" \
    -o Dpkg::Options::="--force-confold" \
    upgrade

log "System updates completed successfully"
