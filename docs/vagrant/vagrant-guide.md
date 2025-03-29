<!-- markdownlint-disable MD013 -->

# 🛠️ Vagrant Development Environment Dependencies

This document outlines all dependencies and plugins required for our Vagrant-based development environment.

!!! abstract "Overview"

    A complete guide to setting up Vagrant with all required plugins and dependencies for a standardized development environment that ensures consistency across teams.

## 📋 Core Dependencies

### Required Software

| Dependency                                | Version | Description                   | License |
| :---------------------------------------- | :------ | :---------------------------- | :------ |
| [VirtualBox](https://www.virtualbox.org/) | 6.1.40+ | Virtualization platform       | GPL v2  |
| [Vagrant](https://www.vagrantup.com/)     | 2.3.4+  | VM management framework       | MIT     |
| [Git](https://git-scm.com/)               | 2.30.0+ | Source control & provisioning | GPL v2  |

!!! danger "System Requirements"

    - **Minimum**: 8GB RAM, 2 CPU cores, 40GB free disk space
    - **Recommended**: 16GB RAM, 4 CPU cores, 100GB free SSD space
    - **CPU**: Hardware virtualization support (Intel VT-x/AMD-V)

## 🧩 Required Plugins

Install these plugins before proceeding with `vagrant up`:

```bash
vagrant plugin install vagrant-hostmanager vagrant-vbguest vagrant-disksize
```

### Plugin Details

| Plugin                                                                       | Purpose                                      | Compliance     | Documentation                                                                  |
| :--------------------------------------------------------------------------- | :------------------------------------------- | :------------- | :----------------------------------------------------------------------------- |
| [vagrant-hostmanager](https://github.com/devopsgroup-io/vagrant-hostmanager) | Manages host files across host/guest systems | SOC 2 Friendly | [Wiki](https://github.com/devopsgroup-io/vagrant-hostmanager/wiki)             |
| [vagrant-vbguest](https://github.com/dotless-de/vagrant-vbguest)             | Manages VirtualBox Guest Additions           | MIT License    | [Usage Guide](https://github.com/dotless-de/vagrant-vbguest#usage)             |
| [vagrant-disksize](https://github.com/sprotheroe/vagrant-disksize)           | Allows dynamic disk resizing                 | MIT License    | [README](https://github.com/sprotheroe/vagrant-disksize/blob/master/README.md) |

!!! warning "Plugin Compatibility"

    Always match plugin versions with your Vagrant version. Run `vagrant plugin update` when upgrading Vagrant.

## 🚀 Performance Enhancement Plugins

These optional plugins improve development workflow and performance:

```bash
vagrant plugin install vagrant-cachier vagrant-faster vagrant-bindfs
```

### Optimization Plugins

| Plugin                                                       | Benefit                             | Usage Scenario       | Documentation                                                             |
| :----------------------------------------------------------- | :---------------------------------- | :------------------- | :------------------------------------------------------------------------ |
| [vagrant-cachier](https://github.com/fgrehm/vagrant-cachier) | Caches apt/yum packages between VMs | Multiple similar VMs | [Usage](https://github.com/fgrehm/vagrant-cachier/blob/master/README.md)  |
| [vagrant-faster](https://github.com/rdsubhas/vagrant-faster) | Reduces boot time                   | Frequent restarts    | [Setup](https://github.com/rdsubhas/vagrant-faster#setup)                 |
| [vagrant-bindfs](https://github.com/gael-ian/vagrant-bindfs) | Better file sync performance        | NFS alternative      | [Configuration](https://github.com/gael-ian/vagrant-bindfs#configuration) |

## 💻 OS-Specific Setup

### Windows

```powershell
# Install Chocolatey package manager
Set-ExecutionPolicy Bypass -Scope Process -Force
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install dependencies
choco install virtualbox vagrant git -y
```

!!! tip "Windows Performance"

    - Disable Windows Defender scanning for VM directories
    - Add VM paths to Windows Defender exclusions
    - Disable Hyper-V if enabled (conflicts with VirtualBox)

### macOS

```bash
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install dependencies
brew install --cask virtualbox vagrant
brew install git
```

!!! info "macOS File Sharing"

    - NFS mounts require additional configuration on macOS
    - Consider using vagrant-bindfs for improved performance

### Linux

```bash
# Ubuntu/Debian
sudo apt update
sudo apt install -y virtualbox vagrant git

# For improved NFS performance
sudo apt install -y nfs-kernel-server nfs-common
```

## ⚙️ Configuration Validation

Verify your installation with:

```bash
vagrant --version
VBoxManage --version
vagrant plugin list
vagrant validate  # Checks Vagrantfile syntax
```

## 🔒 Compliance & Security

!!! danger "Enterprise Considerations"

    - **Network Security**: VMs use NAT by default but can expose ports
    - **Data Protection**: Sensitive data in synced folders may need encryption
    - **License Compliance**: All tools use open-source licenses but review for your organization
    - **Resource Control**: Set resource limits to prevent overprovisioning

### Security Best Practices

- Use private networks for inter-VM communication
- Limit exposed ports to localhost with `host_ip: "127.0.0.1"`
- Use encrypted or temporary storage for sensitive data
- Keep Vagrant and VirtualBox updated for security patches

## ⚠️ Troubleshooting

| Issue                    | Solution                                                         | Reference                                                                |
| :----------------------- | :--------------------------------------------------------------- | :----------------------------------------------------------------------- |
| VirtualBox won't start   | Ensure virtualization enabled in BIOS                            | [VBox Docs](https://www.virtualbox.org/manual/ch12.html)                 |
| Guest Additions mismatch | `vagrant plugin install vagrant-vbguest --plugin-version 0.30.0` | [GitHub Issue](https://github.com/dotless-de/vagrant-vbguest/issues/367) |
| File sync errors         | Use alternative sync method:`type: "rsync"`                      | [Sync Docs](https://www.vagrantup.com/docs/synced-folders/rsync)         |
| Network connectivity     | Check firewall settings and host-only network adapters           | [Network Docs](https://www.vagrantup.com/docs/networking)                |

## 📚 Resources & References

### Official Documentation

- [Vagrant Documentation](https://www.vagrantup.com/docs)
- [VirtualBox Manual](https://www.virtualbox.org/manual/)
- [Vagrant Cloud](https://app.vagrantup.com/boxes/search) - For base boxes

### Community Resources

- [Vagrant GitHub Repository](https://github.com/hashicorp/vagrant)
- [HashiCorp Discuss](https://discuss.hashicorp.com/c/vagrant/24)
- [Stack Overflow: Vagrant Tag](https://stackoverflow.com/questions/tagged/vagrant)

### Learning Resources

- [HashiCorp Learn: Vagrant](https://learn.hashicorp.com/vagrant)
- [Vagrant Quick-Start Tutorial](https://learn.hashicorp.com/collections/vagrant/getting-started)
