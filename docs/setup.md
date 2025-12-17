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
<img width="1366" height="768" alt="Screenshot from 2025-12-16 16-43-43" src="https://github.com/user-attachments/assets/286e81a7-b4e9-4967-9935-8c4cbb3d3fac" />

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
<img width="1366" height="768" alt="Screenshot from 2025-12-16 16-48-25" src="https://github.com/user-attachments/assets/62e0e393-5012-420a-bf16-de0ece27deea" />
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
<img width="1366" height="768" alt="Screenshot from 2025-12-16 17-15-35" src="https://github.com/user-attachments/assets/48b20175-c907-4ce5-9427-417702f0f9b0" />

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
<img width="1366" height="768" alt="Screenshot from 2025-12-16 17-16-22" src="https://github.com/user-attachments/assets/fc432464-ec39-4838-8008-9fe0c3a630b8" />

# Step 6: Update Ubuntu System
```
sudo apt update && sudo apt upgrade -y
```
+ This may take 5-10 minutes.
<img width="1366" height="768" alt="Screenshot from 2025-12-16 17-20-49" src="https://github.com/user-attachments/assets/a72365c3-4914-47ef-a77a-2c6fb05ce0fe" />

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
<img width="1366" height="768" alt="Screenshot from 2025-12-16 17-33-02" src="https://github.com/user-attachments/assets/920f07a0-832e-497c-9188-c2bb16b12e0c" />

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
<img width="1366" height="768" alt="Screenshot from 2025-12-17 08-43-00" src="https://github.com/user-attachments/assets/00daf02f-cc81-4b6b-b067-8c9899779bd9" />

# Step 10: Create First User (asmith12)
```
useradd -m -c "Alex Smith" -s "/usr/bin/bash" asmith12
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
useradd -m -c "Jessica Jones" -s "/usr/bin/bash" jjones34
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
<img width="1366" height="768" alt="Screenshot from 2025-12-17 09-01-28" src="https://github.com/user-attachments/assets/81b8784d-836b-4ad4-99e9-ec09462e258f" />

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
<img width="1366" height="768" alt="Screenshot from 2025-12-17 09-21-26" src="https://github.com/user-attachments/assets/37fdcc52-9046-423d-b7a5-7641a323e2a5" />

# Step 15: Install Linux Mint
+ **During Installation:**
  - Wait for Linux Mint live environment to load
  - Double-click "Install Linux Mint" icon on desktop
  - Language: Select "English"
  - Keyboard Layout: Select your keyboard layout
  - Multimedia Codecs:
    - ❌ DO NOT check "Install multimedia codecs"
    - Leave the box UNCHECKED
+ Installation Type: Select "Erase disk and install Linux Mint"
+ Timezone: Select your timezone
+ Who are you?:
  - Your name: Your full name
  - Computer name: **username-ubu** (e.g., aabel3-ubu)
  - Username: Your **Seneca username** (e.g., aabel3)
  - Password: Create a strong password
  - Select "Require my password to log in"
<img width="1366" height="768" alt="Screenshot from 2025-12-17 09-26-14" src="https://github.com/user-attachments/assets/4ad022f1-b84b-4380-9dc0-780641a37302" />

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
<img width="1366" height="768" alt="Screenshot from 2025-12-17 09-41-42" src="https://github.com/user-attachments/assets/550bce26-6082-4c97-8b06-4b7ac9002a15" />

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
<img width="1366" height="768" alt="Screenshot from 2025-12-17 09-42-52" src="https://github.com/user-attachments/assets/ab4b12ed-ddbf-438d-bcd0-50db6caf58f3" />


# Step 18: Update Mint System
```
sudo apt update && sudo apt upgrade -y
```
+ This may take 5-10 minutes.
Attach screenshot of terminal showing successful completion of system update

# Step 19: Install xplayer (Celluloid is the modern version of xplayer)
```
sudo apt install xplayer -y
```
+ Verify installation:
```
which xplayer
```
+ Expected output: **/usr/bin/xplayer**
<img width="1366" height="768" alt="Screenshot from 2025-12-17 10-10-26" src="https://github.com/user-attachments/assets/25ed6efb-800f-4e70-970c-161c5359c5f8" />

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
<img width="1366" height="768" alt="Screenshot from 2025-12-17 09-35-10" src="https://github.com/user-attachments/assets/c0487228-6dbf-4fcc-a79d-12a95cb9ab68" />
<img width="1366" height="768" alt="Screenshot from 2025-12-17 09-35-37" src="https://github.com/user-attachments/assets/3cc908c7-1011-497b-a386-b0d453c54d94" />

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
