# Linux System Report Generator

A lightweight Bash utility that collects essential Linux system information and saves it in a readable text report. It provides a quick overview of system resources for basic monitoring and troubleshooting.

## Features and Metrics Collected

The script uses standard Linux commands to generate a system report without requiring root privileges for typical use.

- System Hostname (`hostname`): Displays the machine's hostname.
- Kernel Version (`uname -r`): Shows the currently running Linux kernel version.
- Disk Usage (`df -h`): Displays disk space usage across mounted file systems.
- Memory Usage (`free -h`): Reports RAM and swap memory statistics.
- Top Running Processes (`ps`): Lists the processes consuming the most CPU resources, including process ID, user, CPU usage, and memory usage.

## Prerequisites

- A Linux-based operating system, such as Ubuntu, Debian, Fedora, or Arch Linux.
- Bash shell.
- Required system utilities, including `hostname`, `uname`, `df`, `free`, and `ps`.

## Installation and Setup

Clone the repository:

```bash
git clone https://github.com/shreyasee-codes/linux-system-report.git
cd linux-system-report
```

Make the script executable:

```bash
chmod +x system_report.sh
```

## Usage Instructions

Run the script from the project directory:

```bash
./system_report.sh
```

The script generates a report named `system-report.txt`.

View the report using:

```bash
cat system-report.txt
```

You can also use `less` or a text editor to read the report.

## Example Output

The generated report may contain sections similar to the following:

```text
========================================
         LINUX SYSTEM REPORT
========================================

--- HOSTNAME ---
ubuntu-server

--- KERNEL VERSION ---
6.8.0-40-generic

--- DISK USAGE ---
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1        50G   15G   33G  32% /

--- MEMORY USAGE ---
Mem:           7.7Gi  1.2Gi  4.5Gi

--- TOP RUNNING PROCESSES ---
PID   USER    %CPU  %MEM  COMMAND
1042  root    15.2   2.1  dockerd

========================================
           END OF REPORT
========================================
```

Note: The values above are illustrative. Actual output depends on the system and the commands used in the script.

## Customization

The script can be modified to suit different requirements.

- Change the output filename by editing the `OUTPUT_FILE` variable in `system_report.sh`.
- Adjust the number of displayed processes by changing the relevant `head -n` value.
- Add commands such as `ip a` or `uptime` to include network interface information or system uptime.

## Troubleshooting

Permission denied: Make the script executable using:

```bash
chmod +x system_report.sh
```

Command not found: Install any missing utilities using your distribution's package manager. On Debian-based systems, `ps` and `free` are provided by the `procps` package.

## Contributing

Suggestions, bug reports, and improvements are welcome.

1. Fork the repository.
2. Create a feature branch.
3. Commit your changes with a descriptive message.
4. Push the branch to your fork.
5. Open a pull request.
