# Vagrant Operations Guide

This guide outlines the common Vagrant operations for managing Ubuntu Docker development environments.

## 🚀 Getting Started

### `Makefile` Commands

```Makefile

[[ include  "../../base_vm/Makefile" ]]

```

### bash scripts `base_provision.sh`

```sh

[[ include  "../../base_vm/scripts/base_provision.sh" ]]

```

### Base Vagrantfile `Vagrantfile`

```ruby

[[ include  "../../base_vm/Vagrantfile" ]]

```

### go to `base_vm` directory

```bash
cd base_vm
```

### Start the Vagrant Environment

Launch the VM with provisioning enabled and colored output:

```bash
vagrant up --color --provisionv
```

!!! tip "First Run"

    The first run will take longer as it downloads the base box and runs all provisioning scripts.

### Connect to the VM

SSH into the running Vagrant VM:

```bash
vagrant ssh
```

## 📊 VM Management

### Check VM Status

View the status of all Vagrant VMs in the current directory:

```bash
vagrant status
```

### View SSH Configuration

Display the SSH configuration for connecting to the VM:

```bash
vagrant ssh-config
```

!!! info "External SSH Clients"

    You can use this configuration with external SSH clients like PuTTY or in your SSH config file.

## 📦 Packaging & Distribution

### Package Ubuntu 24.04 Docker VM

Package the Ubuntu 24.04 version of the Docker VM:

```bash
vagrant package --base vbox-docker-ubuntu2404 \
    --output vbox-docker-ubuntu2404 \
    --vagrantfile "./base.Vagrantfile"
```

!!! warning "VM Must Exist"

    Ensure the VM exists in VirtualBox with the exact name specified in the `--base` parameter.

### Add Box to Vagrant

Add the packaged box to your local Vagrant box repository:

```bash
vagrant box add --name vbox-docker-ubuntu2404 ./vbox-docker-ubuntu2404
```

### List Available Boxes

View all Vagrant boxes with detailed information:

```bash
vagrant box list -i
```

## 🔄 Base Box Creation Workflow

!!! example "Step-by-Step Commands"

    Follow these commands sequentially to create and manage your Vagrant base box:

    1. Navigate to base VM directory

        ```bash
        cd base_vm
        ```

    2. Initialize and provision VM

        ```bash
        vagrant up --color --provision
        ```

    3. Package VM for distribution

        ```bash
        vagrant package --base vbox-docker-ubuntu2404 \
            --output vbox-docker-ubuntu2404 \
            --vagrantfile "./Vagrantfile"
        ```

    4. Add to local box repository

        ```bash
        vagrant box add --name vbox-docker-ubuntu2404 ./vbox-docker-ubuntu2404
        ```

    5. Verify installation

        ```bash
        vagrant box list -i
        ```

!!! tip "Box Creation"

    This workflow creates a reusable base box that can be shared across your development team.
