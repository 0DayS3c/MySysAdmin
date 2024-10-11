# MySysAdmin - Linux Backup and System Management Script

**MySysAdmin** is a robust, all-in-one administrative tool designed for managing Linux systems. Created by **Piyusha Akash**, this script automates backups, system monitoring, and file management, making it an essential tool for system administrators and tech enthusiasts.

## Features

- **System Information**: Displays detailed information about your system, including:
  - Current user, system uptime, and date/time
  - Running processes and top CPU-consuming tasks
  - Hardware details (CPU, RAM, block devices, USB devices, etc.)
  - Network configuration and interface details
- **File & Directory Search**: Search for specific files or directories across the system.
- **Backup Tool**: Easily back up directories into `.tar.gz` archives, automatically appending a timestamp to the file name for easy tracking.
- **Service Management**: Check and manage all system services, view active services, and disk usage information.
- **Built-in Help & Manual**: Access help commands and a manual that details all the tool's functionalities for easy reference.

## Prerequisites

- **Operating System**: Debian-based distributions such as Kali Linux, Parrot OS, and Ubuntu (tested).
- **Root (Sudo) Access**: Some functions require elevated permissions. The script will notify you when root access is needed.
- **Dependencies**:
  - `figlet`: Used for rendering banners. The script will automatically install `figlet` if it’s not installed.

## Installation

1. **Clone the repository**:

    ```bash
    git clone https://github.com/0DayS3c/MySysAdmin.git
    cd MySysAdmin
    ```

2. **Make the script executable**:

    ```bash
    chmod +x mysysadmin.sh
    ```

3. **Run the script with root permissions**:

    ```bash
    sudo ./mysysadmin.sh
    ```

## Available Commands

Here are the main commands available in **MySysAdmin**:

| Command   | Description                                                                 |
|-----------|-----------------------------------------------------------------------------|
| `help`    | Displays the help menu with a list of available commands.                   |
| `clear`   | Clears the terminal window.                                                 |
| `exit`    | Exits the tool.                                                             |
| `banner`  | Prints the tool's banner in the terminal.                                   |
| `checkdir`| Searches the system for directories with a specified name.                  |
| `checkfile`| Searches the system for files with a specified name.                        |
| `backup`  | Backs up a specified directory and creates a `.tar.gz` archive.             |
| `sysinfo` | Provides detailed system information.                                       |
| `info`    | Displays information about the tool and its creator.                        |
| `man`     | Shows the full manual for the tool, including command explanations.         |

## Backup Functionality

To back up a directory, follow these steps:

1. **Enter the source directory** you wish to back up when prompted.
2. **Enter the destination directory** where you want to save the backup.
3. The script will create a `.tar.gz` archive with the current date and time appended to the file name for easy organization.

Example:

```bash
Enter directory path you need to backup: /home/user/docs
Enter directory path you need to save your backup: /backup/dir
Backup was successful: /backup/dir/docs_backup_202401011200.tar.gz
