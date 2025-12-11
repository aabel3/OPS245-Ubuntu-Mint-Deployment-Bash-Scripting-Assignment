# OPS245 Assignment 1 – Ubuntu & Mint VM Deployment + Bash Scripting

Welcome to OPS245 Assignment 1!

This assignment showcases your ability to install and configure multiple Linux distributions, perform post-installation tasks, and write a Bash script that demonstrates control structures and system interaction. You will work with Ubuntu Minimal LTS and Linux Mint 21.3 Cinnamon Edition, both installed as VMs inside your debhost system.

📚 Assignment Objectives:
+ Install and configure Ubuntu Minimal LTS VM with Cinnamon desktop
+ Install and configure Linux Mint 22.2 Cinnamon Edition VM
+ Perform post-installation tasks:
  - Set root password
  - Update systems
  - Install required packages (chromium on Ubuntu, xplayer on Mint)
  - Create additional users on Ubuntu
+ Write a Bash script that:
  - Runs with sudo
  - Prompts user for input (Option A or B)
  - Uses a while loop to enforce valid input
  - Option A: Displays user ID for a given username
  - Option B: Displays status of a given system service
+ Handles invalid usernames/services gracefully
+ Redirects all output to sysinfo-output.txt while also displaying on screen
+ Is fully commented with your name, student number, and completion date

📂 Assignment Files & Deliverables:
You will create and work with the following during this assignment:
+ Ubuntu VM (username-ubu) – Minimal LTS install with Cinnamon desktop
+ Mint VM (username-mint) – Cinnamon Edition install
+ Bash script file (sysinfo.sh) with:
  - While loop
  - If statements
  - read, grep usage
  - Output redirection to sysinfo-output.txt
+ Screenshots showing proof of each rubric item
+ Submission document: ops245A1-username.docx containing screenshots and explanations

🧩 Tips & Tricks:
+ Use sudo passwd root to set the root password.
+ Install Cinnamon on Ubuntu with sudo apt install cinnamon-desktop-environment.
+ Always run sudo apt update && sudo apt upgrade before installing packages.
+ Test your Bash script thoroughly with valid and invalid inputs.
+ Redirect output using tee sysinfo-output.txt to both display and save results.
+ Comment every section of your script to explain its purpose.

📖 References:
+ Ubuntu Minimal LTS ISO – https://ubuntu.com/download/desktop
+ Linux Mint 22.2 Cinnamon Edition ISO – https://linuxmint.com/edition.php?id=322 

✅ Rubric (40 Marks):
| Task | Marks |
|------|-------|
| New Ubuntu VM installed (Seneca username) | 5 |
| Correct hostname (Seneca username) | 2 |
| Ubuntu VM using Cinnamon | 2 |
| Ubuntu VM updated | 2 |
| Can log in as root on Ubuntu | 2 |
| Chromium installed in Ubuntu VM | 2 |
| Two new users added in Ubuntu VM | 2 |
| Linux Mint VM installed | 5 |
| Correct hostname (Seneca username) | 2 |
| Linux Mint VM updated | 2 |
| Can log in as root on Mint | 2 |
| Xplayer installed on Mint | 2 |
| Ubuntu Bash Script (script + output) | 10 |
| Total | 40 |
