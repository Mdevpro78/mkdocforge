#!/bin/bash
#
# Main Provisioning Script for Vagrant
# Orchestrates the execution of other specialized scripts

# Error handling
set -e
trap 'echo "Error occurred at line $LINENO. Command: $BASH_COMMAND"' ERR

# Log function
log() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1"
}

log "Starting main provisioning process"

# Change to project directory
PROJECT_DIR="/home/vagrant/mkdocforge"
cd ${PROJECT_DIR}

# Execute commands using Makefile
log "Building Docker containers"
make docker-build

log "Starting Docker containers in detached mode"
make docker-up

log "Listing all Docker containers"
make docker-ps

log "Displaying Docker container logs"
make docker-logs

log "Docker provisioning completed successfully"
