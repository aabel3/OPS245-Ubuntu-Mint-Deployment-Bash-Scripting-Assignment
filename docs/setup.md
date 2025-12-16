# Initial Setup

# Step 1: Download Required ISOs
**Ubuntu LTS ISO:**
+ URL: https://ubuntu.com/download/desktop
+ Version: Latest LTS (Long Term Support)
+ Size: ~4.5 GB

Linux Mint ISO:
+ URL: https://linuxmint.com/download_all.php
+ Version: 21.3 "Virginia" Cinnamon Edition
+ Size: ~2.5 GB

# Step 2: Create Ubuntu Virtual Machine
+ **VM Specifications:**
  - VM Name: **username-ubu** (replace with your Seneca username)
  - Hostname: Same as VM name
  - Memory: **4096 MB (4 GB)**
  - Disk Space: **25 GB**
  - CPUs: 2
  - Network: Use existing virtual network

+ Open virt-manager:
```
virt-manager
```
+ Click **"New"** or "Create a new virtual machine"
+ Select **"Local install media (ISO image or CDROM)"**
+ Browse and select your **Ubuntu ISO**
+ Set memory to **4096 MB**
+ Set CPUs to **2**
+ Create disk image of 25 GB
+ Name the VM: **username-ubu**
+ Select your existing virtual network
+ Click "Finish"

Attach screenshot of VM settings showing name, memory, CPU, and disk configuration

# Step 3: Install Ubuntu
+ **During Installation:**
  - Language: Select English (or your preference)
  - Keyboard Layout: Select your keyboard layout
  - Updates and Other Software:
    - ✅ Select "Minimal Installation" (Important!)
    - ✅ Download updates while installing
+ Installation Type: Use default (Erase disk and install Ubuntu)
+ Who are you?:
  - Your name: Your full name
  - Computer name: **username-ubu** (e.g., aabel3-ubu)
  - Username: Your **Seneca username** (e.g., aabel3)
  - Password: Create a strong password
  - Select "Require my password to log in"
Attach screenshot of user creation screen showing username and computer name
+ Wait for installation to complete and reboot when prompted.

# Step 4: Verify Ubuntu Installation
+ After reboot, log in and verify:
```
hostname
```
+ Expected output: **username-ubu**
```
whoami
```
+ Expected output: **your-seneca-username**
```
uname -a
```
```
lsb_release -a
```
Attach screenshot of terminal showing hostname command output with correct hostname

# Step 5: Set Root Password
```
sudo passwd root
```
  - Enter your user password when prompted
  - Enter new root password twice

+ Verify root access:
```
su -
```
+ Enter root password
```
whoami
```
+ Expected output: root
Attach screenshot of terminal showing su - and whoami commands proving root login work

# Step 6: Update Ubuntu System
```
sudo apt update && sudo apt upgrade -y
```
+ This may take 5-10 minutes.
Attach screenshot of terminal showing successful completion of system update

# Step 7: Install Cinnamon Desktop Environment
+ Search for Cinnamon packages:
```
sudo apt search cinnamon-desktop-environment
```
+ Install Cinnamon:
```
sudo apt install cinnamon-desktop-environment -y
```
+ This will take 5-10 minutes to download and install.
+ Reboot the system:
```
sudo reboot
```
+ After reboot:
  - At the login screen, before entering your password
  - Click the gear icon (⚙️) in the bottom right
  - Select "Cinnamon"
  - Enter your password and log in

Attach screenshot of login screen showing Cinnamon selection in gear menu

# Step 8: Verify Cinnamon Desktop
+ Open terminal and check:
```
echo $DESKTOP_SESSION
```
+ Expected output: **cinnamon**
+ Alternative check:
```
echo $XDG_CURRENT_DESKTOP
```
+ Expected output: **X-Cinnamon**
Attach screenshot of terminal showing Cinnamon desktop environment verification commands

# Step 9: Install Chromium Browser
```
sudo apt install chromium-browser -y
```
+ Verify installation:
```
which chromium-browser
```
+ Expected output: **/usr/bin/chromium-browser**
+ Launch Chromium (optional):
```
chromium-browser &
```
Attach screenshot of Chromium browser open or terminal showing which chromium-browser output

# Step 10: Create First User (asmith12)
```
sudo useradd -m -c "Alex Smith" asmith12
```
+ Command breakdown:
  - -m : Create home directory
  - -c "Alex Smith" : Set full name
  - asmith12 : Username

+ Set password:
```
sudo passwd asmith12
```
+ Enter password twice when prompted.

# Step 11: Create Second User (jjones34)
```
sudo useradd -m -c "Jessica Jones" jjones34
```
+ Set password:
```
sudo passwd jjones34
```
+ Enter password twice when prompted.

# Step 12: Verify Both Users Created
+ Check /etc/passwd entries:
```
grep "asmith12\|jjones34" /etc/passwd
```
+ Expected output:
  - **asmith12:x:1001:1001:Alex Smith:/home/asmith12:/bin/sh**
  - **jjones34:x:1002:1002:Jessica Jones:/home/jjones34:/bin/sh**
+ Check home directories:
```
ls -la /home/
```
+ You should see folders for:
  - asmith12
  - jjones34
  - your username
Attach screenshot of terminal showing grep command output for both users in /etc/passwd

# Step 13: Test User Logins
+ Test asmith12:
```
su - asmith12
```
```
whoami
```
+ Expected output: **asmith12**

+ Test jjones34:
```
su - jjones34
```
```
whoami
```
+ Expected output: **jjones34**
Attach screenshot of terminal showing successful login tests for both asmith12 and jjones34

# Step 14: Create Linux Mint Virtual Machine
+ **VM Specifications:**
  - VM Name: **username-mint** (replace with your Seneca username)
  - Hostname: Same as VM name
  - Memory: **4096 MB (4 GB)**
  - Disk Space: **25 GB**
  - CPUs: 2
  - Network: Use existing virtual network

+ Open virt-manager:
```
virt-manager
```
+ Click **"New"** or "Create a new virtual machine"
+ Select **"Local install media (ISO image or CDROM)"**
+ Browse and select your **Ubuntu ISO**
+ Set memory to **4096 MB**
+ Set CPUs to **2**
+ Create disk image of 25 GB
+ Name the VM: **username-mint**
+ Select your existing virtual network
+ Click "Finish"
Attach screenshot of Mint VM settings showing name, memory, CPU, and disk configuration

# Step 15: Install Linux Mint
+ **During Installation:**
  - Wait for Linux Mint live environment to load
  - Double-click "Install Linux Mint" icon on desktop
  - Language: Select "English"
  - Keyboard Layout: Select your keyboard layout
  - Multimedia Codecs:
    - ❌ DO NOT check "Install multimedia codecs"
    - Leave the box UNCHECKED
Attach screenshot of installation screen with multimedia codecs checkbox UNCHECKED

+ Installation Type: Select "Erase disk and install Linux Mint"
+ Timezone: Select your timezone
+ Who are you?:
  - Your name: Your full name
  - Computer name: **username-ubu** (e.g., aabel3-ubu)
  - Username: Your **Seneca username** (e.g., aabel3)
  - Password: Create a strong password
  - Select "Require my password to log in"
Attach screenshot of user creation screen showing username and computer name
+ Wait for installation to complete and reboot when prompted.

# Step 16: Verify Mint Installation
+ After reboot, log in and open terminal:
```
hostname
```
+ Expected output: **username-mint**
```
cat /etc/os-release | grep PRETTY_NAME
```
+ Expected output: **PRETTY_NAME="Linux Mint 21.3"**
Attach screenshot of terminal showing hostname command output with correct hostname

# Step 17: Set Root Password on Mint
```
sudo passwd root
```
  - Enter your user password when prompted
  - Enter new root password twice

+ Verify root access:
```
su -
```
+ Enter root password
```
whoami
```
+ Expected output: root
Attach screenshot of terminal showing root login verification on Mint

# Step 18: Update Mint System
```
sudo apt update && sudo apt upgrade -y
```
+ This may take 5-10 minutes.
Attach screenshot of terminal showing successful completion of system update

# Step 19: Install xplayer
```
sudo apt install xplayer -y
```
+ Verify installation:
```
which xplayer
```
+ Expected output: **/usr/bin/xplayer**
Attach screenshot of terminal showing xplayer installation verification

# Step 20: Create BASH Script on Ubuntu VM
+ On your Ubuntu VM, navigate to home directory:
```
cd ~
```
```
nano sysinfo.bash
```
+ Or use vim:
```
vim sysinfo.sh
```
+ Use either scripts in this reprositotory to complete the assignment:
+ Save and exit:
  - Nano: Ctrl+X, Y, Enter
  - Vim: Esc, :wq, Enter
Attach screenshot of terminal showing complete script contents (all lines visible)

# Step 21: Make Script Executable
```
chmod +x sysinfo.bash
```
+ Verify permissions:
```
ls -l sysinfo.bash
```
+ Expected output: **-rwxr-xr-x 1 username username 3456 Dec 1 10:30 sysinfo.sh**
Attach screenshot of terminal showing script permissions with ls -l command

Step 21: Create Submission Document
+ Create a document named ops245A1-yourusername.docx or .pdf containing:
+ **Ubuntu VM Section:**
  - ✅ New Ubuntu VM installed (Seneca username)
  - ✅ Correct hostname (Seneca username)
  - ✅ Ubuntu VM using Cinnamon
  - ✅ Ubuntu VM updated
  - ✅ Can log in as root on Ubuntu
  - ✅ Chromium installed in Ubuntu VM
  - ✅ Two new users added in Ubuntu VM

+ **Linux Mint VM Section:**
  - ✅ Linux Mint VM installed
  - ✅ Correct hostname (Seneca username)
  - ✅ Linux Mint VM updated
  - ✅ Can log in as root on Mint
  - ✅ xplayer installed on Mint

+ **BASH Script Section:**
  - ✅ Ubuntu BASH script contents (complete file with all comments)
  - ✅ Script output - Running without sudo (error message)
  - ✅ Script output - Invalid input handling (entering X, 5, then A)
  - ✅ Script output - Option A with valid username
  - ✅ Script output - Option A with invalid username (error and exit)
  - ✅ Script output - Option B with valid service
  - ✅ Script output - Option B with invalid service (error displayed)
  - ✅ Contents of sysinfo-output.txt file

# Step 19: Submit on Blackboard
Upload your document to the Assignment 2 folder on Blackboard.
