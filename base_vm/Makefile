.PHONY: all clean test \
	vagrant-up vagrant-ssh \
	vagrant-package-ubuntu2404 \
	vagrant-ssh-config \
	vagrant-status \
	vagrant-add-box vagrant-list-boxes \


# Placeholder targets to satisfy checkmake
all: vagrant-up
	@echo "✅ Environment fully provisioned"

clean:
	@echo "🧹 Destroying Vagrant environment..."
	vagrant destroy -f

test: vagrant-up
	@echo "🔧 Validate Vagrantfile..."
	vagrant validate

# Vagrant Operations Makefile
# For Ubuntu Docker Development Environment

# Start the Vagrant environment with provisioning
vagrant-up:
	@echo "🚀 Starting Vagrant environment with provisioning..."
	vagrant up --color --provision

# Connect to the Vagrant VM via SSH
vagrant-ssh:
	@echo "🔑 Connecting to Vagrant VM via SSH..."
	vagrant ssh

# Display SSH configuration for the VM
vagrant-ssh-config:
	@echo "📋 Displaying SSH configuration..."
	vagrant ssh-config

# Check status of all Vagrant VMs
vagrant-status:
	@echo "📊 Checking Vagrant VM status..."
	vagrant status

# Package Ubuntu 24.04 Docker VM
vagrant-package-ubuntu2404:
	@echo "📦 Packaging vbox-docker-ubuntu2404 VM..."
	vagrant package --base vbox-docker-ubuntu2404 \
			--output vbox-docker-ubuntu2404 \
			--vagrantfile "./Vagrantfile"

# Add packaged box to Vagrant
vagrant-add-box:
	@echo "➕ Adding packaged box to Vagrant..."
	vagrant box add --name vbox-docker-ubuntu2404 ./vbox-docker-ubuntu2404

# List all Vagrant boxes with details
vagrant-list-boxes:
	@echo "📋 Listing all Vagrant boxes..."
	vagrant box list -i
