# -*- mode: ruby -*-
# vi: set ft=ruby :

# Environment variables
VAGRANT_BOX = "vbox-docker-ubuntu2404"  # Standard Ubuntu 22.04 LTS box
VAGRANT_BOX_VERSION = "0"
VM_NAME = "mkdocforge.local"
VM_IP = "192.168.56.150"
VM_MEMORY = 4096  # MB
VM_CPUS = 2
VM_CPUEXECUTIONCAP = 100  # CPU execution cap (percentage)

Vagrant.configure("2") do |config|
  # Basic box configuration
  config.vm.box = VAGRANT_BOX
  config.vm.box_version = VAGRANT_BOX_VERSION
  config.vm.hostname = VM_NAME
  config.vm.boot_timeout = 600
  config.vm.box_check_update = false

  # Network configuration
  config.vm.network :private_network,
    ip: VM_IP,
    netmask: "24",
    auto_config: true,
    hostname: true

  # Synced folder configuration with performance optimizations
  config.vm.synced_folder ".", "/home/vagrant/mkdocforge",
    type: "rsync",
    disabled: false,
    rsync__chown: true,
    owner: "vagrant",
    group: "vagrant",
    mount_options: ["dmode=775,fmode=777"],
    rsync__args: ["--verbose", "--archive", "--delete", "-z", "--compress-level=9"],
    rsync__exclude: [
        ".git/", \
        ".github/", \
        ".vscode/", \
        "node_modules/", \
        ".DS_Store", \
        ".cache/", \
        ".qodo/", \
        ".ruff_cache/", \
        ".vagrant/", \
        ".venv/", \
        "venv/", \
        "site/", \
        "mkdocforge.egg-info/", \
    ]

  # HostManager plugin configuration
  if Vagrant.has_plugin?("vagrant-hostmanager")
    config.hostmanager.enabled = true
    config.hostmanager.manage_host = false
    # config.hostmanager.manage_host = true
    config.hostmanager.manage_guest = true
    config.hostmanager.ignore_private_ip = false
    config.hostmanager.include_offline = true
    config.hostmanager.elevate_commands = true
    config.vm.provision :hostmanager
  end

  # VirtualBox provider configuration with advanced performance optimizations
  config.vm.provider "virtualbox" do |vb|
    vb.name = VM_NAME
    vb.memory = VM_MEMORY
    vb.cpus = VM_CPUS
    vb.check_guest_additions = false

    # CPU optimizations
    vb.customize ["modifyvm", :id, "--cpuexecutioncap", VM_CPUEXECUTIONCAP]
    vb.customize ["modifyvm", :id, "--nestedpaging", "on"]
    vb.customize ["modifyvm", :id, "--largepages", "on"]
    vb.customize ["modifyvm", :id, "--vtxvpid", "on"]
    vb.customize ["modifyvm", :id, "--vtxux", "on"]
    vb.customize ["modifyvm", :id, "--pae", "on"]
    vb.customize ["modifyvm", :id, "--hwvirtex", "on"]

    # I/O optimizations
    vb.customize ["modifyvm", :id, "--ioapic", "on"]
    vb.customize ["modifyvm", :id, "--hpet", "on"]
    # vb.customize ["storagectl", :id, "--name", "SATA Controller", "--hostiocache", "on"]

    # Memory optimizations
    vb.customize ["modifyvm", :id, "--pagefusion", "on"]

    # Network optimizations
    vb.customize ["modifyvm", :id, "--nictype1", "virtio"]
    vb.customize ["modifyvm", :id, "--nictype2", "virtio"]
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]

    # Other optimizations
    vb.customize ['modifyvm', :id, '--tpm-type', '2.0']
    vb.customize ['modifyvm', :id, '--chipset', 'ich9']  # Changed from piix3 to ich9 for better performance
    vb.customize ['modifyvm', :id, '--vm-process-priority', 'high']
    vb.customize ["modifyvm", :id, "--graphicscontroller", "vmsvga"]
    vb.customize ["modifyvm", :id, "--accelerate3d", "off"]
    vb.customize ["modifyvm", :id, "--audio", "none"]
    vb.customize ["modifyvm", :id, "--usb", "off"]
    vb.customize ["modifyvm", :id, "--clipboard-mode", "bidirectional"]
    vb.customize ["modifyvm", :id, "--draganddrop", "hosttoguest"]

    # Disk I/O optimizations - specify SSD if applicable
    # vb.customize ["storageattach", :id, "--storagectl", "SATA Controller", "--port", "0", "--nonrotational", "on", "--discard", "on"]
  end

  # Disable automatic VBGuest updates if plugin is installed
  if Vagrant.has_plugin?("vagrant-vbguest")
    config.vbguest.auto_update = false
  end

  # TCP offloading and custom NIC settings
  config.vm.provision "shell", path: "scripts/tune_performance.sh", privileged: true

  # Optional: Run system update s
  config.vm.provision "shell", path: "scripts/update_system.sh", privileged: true

  # Optional: Install common development tools
  config.vm.provision "shell", path: "scripts/install_dev_tools.sh", privileged: true

  # Boot time optimization - disable GUI
  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
  end

  # Additional port forwarding for web services
  config.vm.network "forwarded_port", guest: 8000, host: 8000

  # Display post-up message with relevant information
  config.vm.post_up_message = <<-MESSAGE

    Access your virtual machine:
      * SSH: vagrant ssh
      * Web: http://#{VM_IP}:8000/ or http://localhost:8000/


    VM Info:
      * OS: Ubuntu 22.04 LTS
      * Hostname: #{VM_NAME}
      * IP Address: #{VM_IP}
      * Memory: #{VM_MEMORY}MB
      * CPUs: #{VM_CPUS}

    Your files are synced to: /home/vagrant/mkdocforge
  MESSAGE
end
