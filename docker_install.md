# Installing Docker and Docker Desktop

## Windows

### Install Docker Desktop:

1. Download Docker Desktop for Windows from the official Docker website: [Docker Desktop](https://www.docker.com/products/docker-desktop).
2. Run the installer and follow the on-screen instructions.
3. During installation, Docker Desktop may prompt you to enable WSL 2 (Windows Subsystem for Linux). Follow the prompts to install and set up WSL 2.

### Start Docker Desktop:

- After installation, Docker Desktop should start automatically.
- Look for the Docker icon in the system tray (near the clock). Once it's running, Docker Desktop is ready to use.

### Verify Installation:

1. Open PowerShell or Command Prompt and verify Docker installation by typing:
   ```bash
   docker --version
   docker-compose --version
2. Additionally, you can run a simple test to verify Docker is working correctly:
   ```bash
      docker run hello-world
- This command downloads a test image and runs it in a container, which prints a message if Docker is working correctly.

# Linux (Ubuntu)

## Install Docker Engine

1. **Update the apt package index:**
    ```bash
    sudo apt-get update
    ```

2. **Install packages to allow apt to use a repository over HTTPS:**
    ```bash
    sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
    ```

3. **Add Docker's official GPG key:**
    ```bash
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    ```

4. **Set up the stable Docker repository:**
    ```bash
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
    ```

5. **Update the apt package index again:**
    ```bash
    sudo apt-get update
    ```

6. **Install Docker Engine:**
    ```bash
    sudo apt-get install -y docker-ce docker-ce-cli containerd.io
    ```

## Manage Docker as a non-root user (optional)

1. **Add your user to the docker group:**
    ```bash
    sudo usermod -aG docker $USER
    ```

2. **Log out and log back in** so that your group membership is re-evaluated.

## Verify Installation

1. **Verify Docker installation:**
    ```bash
    docker --version
    docker-compose --version
    ```

2. **Run a test container** to verify Docker is working correctly:
    ```bash
    docker run hello-world
    ```

## macOS

### Install Docker Desktop

1. **Download Docker Desktop** for Mac from the official Docker website: [Docker Desktop for Mac](https://www.docker.com/products/docker-desktop).

2. **Install Docker Desktop:**
   - Double-click the downloaded `.dmg` file to open the installer.
   - Drag the Docker icon to the Applications folder.

3. **Open Docker Desktop:**
   - Launch Docker from Launchpad or Spotlight.
   - Docker Desktop should start automatically.
   - The Docker whale icon should appear in the top status bar once Docker Desktop is running.

### Verify Installation

1. **Open Terminal** and verify Docker installation:
   ```bash
   docker --version
   docker-compose --version
2. Run a test container to verify Docker is working correctly:
   ```bash
      docker run hello-world
## Summary
- Windows: Install Docker Desktop from the official website and verify using PowerShell or Command Prompt.
- Linux (Ubuntu): Install Docker Engine using apt-get and verify using the terminal.
- macOS: Install Docker Desktop from the official website, drag the application to Applications, and verify using Terminal.


- After installation and verification, you can start using Docker to containerize applications and manage your development environment efficiently across different platforms. Adjust the installation steps as necessary based on updates and changes from Docker's official documentation and your specific system configuration.
