#!/bin/bash
#
# System Performance Tuning Script for Vagrant
# Optimizes network, filesystem, system limits, and services

# Error handling
set -e
trap 'echo "Error occurred at line $LINENO. Command: $BASH_COMMAND"' ERR

# Log function
log() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1"
}

log "Starting system performance optimizations"

# Apply network performance tuning
log "Applying network performance tuning"
cat <<EOF | sudo tee -a /etc/sysctl.conf
net.core.rmem_max=16777216
net.core.wmem_max=16777216
net.ipv4.tcp_rmem=4096 87380 16777216
net.ipv4.tcp_wmem=4096 65536 16777216
net.ipv4.tcp_window_scaling=1
net.ipv4.tcp_fastopen=3
net.ipv4.tcp_sack=1
net.core.netdev_max_backlog=5000
EOF

# Apply filesystem performance tuning
log "Applying filesystem performance tuning"
cat <<EOF | sudo tee -a /etc/sysctl.conf
vm.swappiness=10
vm.dirty_ratio=60
vm.dirty_background_ratio=30
EOF

# Apply system limits
log "Applying system limits"
cat <<EOF | sudo tee -a /etc/sysctl.conf
fs.file-max=2097152
fs.inotify.max_user_watches=524288
EOF

# Apply sysctl changes
log "Applying sysctl changes"
sudo sysctl -p

# Configure limits.conf for better performance
log "Configuring system limits in /etc/security/limits.conf"
cat <<EOF | sudo tee /etc/security/limits.conf
* soft nofile 65535
* hard nofile 65535
root soft nofile 65535
root hard nofile 65535
* soft nproc 65535
* hard nproc 65535
root soft nproc 65535
root hard nproc 65535
EOF

# Disable services that aren't needed
log "Disabling unnecessary services"
for service in snapd lxcfs accounts-daemon apparmor; do
    sudo systemctl disable "$service" 2>/dev/null || true
done

# Set timezone to UTC
log "Setting timezone to UTC"
sudo timedatectl set-timezone UTC

# Report success
log "System performance optimizations applied successfully"
