
#!/bin/bash
# ==========================================
# RHEL 10 Minimal Server Setup Automation
# Author: DevOps
# Platform: Oracle VirtualBox
# ==========================================
set -euo pipefail
echo "======================================"
echo " RHEL 10 SERVER AUTOMATION STARTED"
echo "======================================"

# 1. Verify operating system
if ! grep -q "Red Hat Enterprise Linux" /etc/os-release; then
    echo "Error: This script is intended for RHEL."
    exit 1
fi

echo "[1/7] RHEL operating system verified."

# 2. Check package repositories
echo "[2/7] Checking package repositories..."

dnf repolist

# 3. Create directory and test file
echo "[3/7] Creating directory and test file..."

mkdir -p /data
touch /data/test

echo "Directory and file created successfully."

# 4. Install Apache HTTP Server
echo "[4/7] Installing Apache HTTP Server..."

dnf install httpd -y

# 5. Enable and start Apache
echo "[5/7] Enabling and starting Apache..."

systemctl enable --now httpd

# 6. Configure Firewall
echo "[6/7] Configuring Firewall..."

dnf install firewalld -y

systemctl enable --now firewalld

# Allow HTTP traffic
firewall-cmd --permanent --add-service=http

# Apply firewall configuration
firewall-cmd --reload

echo "Firewall configured successfully."

# 7. Verify services and configuration
echo "[7/7] Verifying server configuration..."
echo "Apache Status:"
systemctl is-active httpd

echo "Firewall Status:"
systemctl is-active firewalld

echo "HTTP Firewall Rule:"
firewall-cmd --list-services

echo "Installed Apache Package:"
rpm -q httpd

echo "Created Directory:"
ls -ld /data

echo "Created File:"
ls -l /data/test

echo "======================================"
echo " SERVER AUTOMATION COMPLETED"
echo "======================================"
