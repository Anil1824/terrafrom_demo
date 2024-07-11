# Installing Terraform

## Windows

### Download Terraform

1. Visit the [official Terraform website](https://www.terraform.io/downloads.html).
2. Download the Windows zip archive for Terraform.

### Extract the Zip Archive

1. After downloading, extract the contents of the zip archive to a directory of your choice (e.g., `C:\terraform`).

### Add Terraform to System Path

1. Open the Start menu and type "env" to search for "Edit the system environment variables".
2. Click on "Environment Variables...".
3. Under "System variables", select "Path" and click "Edit...".
4. Click "New" and add the path to the directory where you extracted Terraform (e.g., `C:\terraform`).
5. Click "OK" on all windows to save the changes.

### Verify Installation

- Open Command Prompt or PowerShell and verify Terraform installation by typing:
   ```bash
      terraform --version


## Linux (Ubuntu)

### Download Terraform

1. Install curl if not already installed:
   ```bash
      sudo apt-get update
      sudo apt-get install -y curl
2. Download Terraform using curl:
   ```bash
      curl -LO https://releases.hashicorp.com/terraform/<version>/terraform_<version>_linux_amd64.zip

- Replace `<version>` with the latest version number from Terraform releases.

### Extract the Zip Archive

- Unzip the downloaded package:
   ```bash
      sudo unzip terraform_<version>_linux_amd64.zip -d /usr/local/bin/

- This command installs Terraform in `/usr/local/bin/`, which is typically in your PATH.

### Verify Installation

 - Open a new terminal window and verify Terraform installation by typing:
   ```bash
    terrafrom --version

## macOS

### Download Terraform

- Download Terraform using curl:
   ```bash
      curl -LO https://releases.hashicorp.com/terraform/<version>/terraform_<version>_darwin_amd64.zip

- Replace `<version>` with the latest version number from Terraform releases.

### Extract the Zip Archive

- Unzip the downloaded package:
   ```bash
      unzip terraform_<version>_darwin_amd64.zip -d /usr/local/bin/

- This command installs Terraform in `/usr/local/bin/`, which is typically in your PATH.

### Verify Installation

1. Open a new terminal window and verify Terraform installation by typing:
   ```bash
      terraform --version

## Summary

- After installation, you can start using Terraform by writing configuration files (`.tf`) and running Terraform commands in your terminal or command prompt. This setup allows you to manage infrastructure as code efficiently across different platforms. Adjust the version numbers and paths as necessary based on the latest releases and your system configuration.


