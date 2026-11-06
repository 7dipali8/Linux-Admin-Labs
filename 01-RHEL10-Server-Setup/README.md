RHEL 10 Minimal Server Deployment & Bash Automation on Oracle VirtualBox
 Project Overview
This project demonstrates the installation, configuration, and automation of Red Hat Enterprise Linux (RHEL) 10 Minimal using Oracle VirtualBox.

The objective was to build a lightweight Linux server environment and perform essential system administration tasks, including user management, file system operations, repository configuration, package management, Apache HTTP Server installation, and firewall configuration.

To improve efficiency and reduce repetitive manual tasks, a Bash shell script was developed to automate essential server setup and configuration operations.

This project focuses on Linux server fundamentals, system administration, service management, security basics, and automation practices used in DevOps environments.
🏗️ Infrastructure & Architecture
Component	Configuration
Operating System	Red Hat Enterprise Linux 10
Installation Type	Minimal Installation
Virtualization Platform	Oracle VirtualBox
Virtual Machine Name	server5
RAM	4000 MB (4 GB)
CPU	1 Core
Storage	40 GB VDI
Disk Type	Virtual Disk Image (VDI)
Package Manager	DNF / YUM
Web Server	Apache HTTP Server (httpd)
Firewall	firewalld
Automation	Bash Shell Scripting⚙️ Implementation Steps
1. Virtual Machine Creation
- Created a virtual machine named server5.
- Allocated 4 GB RAM and 1 CPU.
- Configured a 40 GB virtual disk using VDI.
- Attached the RHEL 10 ISO image.
2. RHEL 10 Installation
- Installed RHEL 10 using the Minimal Installation option.
- Configured the root account.
- Created a local user account.
- Completed the initial operating system setup.
3. Linux File System Management
Performed basic Linux file and directory management operations.
mkdir data
touch data/test
ls -l data
4. Repository Configuration
Configured a package repository and verified its availability using DNF.
dnf repolist
5. Apache HTTP Server Installation
Installed Apache HTTP Server using the DNF package manager.
sudo dnf install httpd -y
Enabled and started the Apache service.
sudo systemctl enable --now httpd
Verified the installed package.
rpm -q httpd
6. Firewall Configuration
Configured the RHEL firewall using firewalld.

Installed the firewall package:
sudo dnf install firewalld -y
Enabled and started the firewall service:
sudo systemctl enable --now firewalld
Allowed HTTP traffic through the firewall:
sudo firewall-cmd --permanent --add-service=http
Reloaded the firewall configuration:
sudo firewall-cmd --reload
Verified firewall rules:
sudo firewall-cmd --list-all
7. Bash Shell Scripting & Automation
Developed a Bash script named setup.sh to automate essential server configuration tasks.

Automation Tasks:
- Verified the RHEL operating system.
- Checked package repository availability.
- Automated directory and file creation.
- Installed Apache HTTP Server.
- Enabled and started Apache using systemd.
- Installed and configured firewalld.
- Allowed HTTP traffic through the firewall.
- Verified Apache and firewall service status.
- Checked installed packages and created files.
Execute the automation script:
chmod +x setup.sh
sudo ./setup.sh

     Automation Workflow
        RHEL 10 Minimal Server
                 |
                 v
       Operating System Check
                 |
                 v
       Repository Verification
                 |
                 v
       Directory & File Creation
                 |
                 v
       Apache Installation
                 |
                 v
       Apache Service Management
                 |
                 v
       Firewall Installation
                 |
                 v
       Firewall Configuration
                 |
                 v
       Service & Configuration
             Verification
                 |
                 v
       Automation Completed

  Technologies & Tools Used
- Red Hat Enterprise Linux 10 – Linux server operating system.
- Oracle VirtualBox – Virtualization platform.
- Bash Shell Scripting – Automation of server configuration tasks.
- DNF / YUM – Package management.
- Apache HTTP Server – Web server installation and service management.
- firewalld – Linux firewall configuration.
- systemd – Service management.
- Linux CLI – System administration and troubleshooting.

📂 Project Structure
RHEL-10-Minimal-Server/
│
├── README.md
│
├── setup.sh

 Key Learning Outcomes
- Installed and configured RHEL 10 Minimal on Oracle VirtualBox.
- Understood Linux server installation and initial configuration.
- Practiced root and local user account management.
- Performed Linux file and directory operations.
- Configured and verified package repositories.
- Installed and managed Apache HTTP Server.
- Configured firewall rules using firewalld.
- Managed Linux services using systemctl.
- Developed Bash scripts to automate repetitive administration tasks.
- Improved understanding of Linux server security and automation fundamentals.
   Future Enhancements
- Automate server configuration using Ansible.
- Implement advanced Linux security configurations.
- Configure SSH key-based authentication.
- Explore Linux performance monitoring and troubleshooting.
- Integrate configuration management into a DevOps workflow.
connect with me: www.linkedin.com/in/dipali-dehankar-91511a3a7
