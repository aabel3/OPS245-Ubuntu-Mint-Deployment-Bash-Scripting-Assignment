# ⚠️ Test Cases

# Step 1: Make Script Executable
```
hmod +x sysinfo.sh
```
+ Verify permissions:

```
hls -l sysinfo.sh
```
+ Expected output: **-rwxr-xr-x 1 username username 3456 Dec 1 10:30 sysinfo.bash**
<img width="1366" height="768" alt="Screenshot from 2025-12-17 11-00-14" src="https://github.com/user-attachments/assets/694c107a-225d-4f80-82e4-287b45df5c57" />

# Step 2: Test Script - Run Without Sudo (Should Fail)
```
./sysinfo.sh
```
+ Expected output:
ERROR: This script must be run with sudo
Usage: sudo ./sysinfo.sh
<img width="1366" height="768" alt="Screenshot from 2025-12-17 11-01-54" src="https://github.com/user-attachments/assets/dc336ae6-a593-40ba-afc6-c315b6c54059" />


# Step 3: Test Script - Invalid Input Handling
```
sudo ./sysinfo.sh
```
+ When prompted, enter: **X**
     - Expected behavior: Script displays error and asks again
+ Then enter: 5
     - Expected behavior: Script displays error and asks again
+ Finally enter: A
     - Expected behavior: Script accepts input and continues
<img width="1366" height="768" alt="Screenshot from 2025-12-17 11-02-16" src="https://github.com/user-attachments/assets/1f1694fb-a738-4b60-9705-4cf81fba50dc" />

# Step 4: Test Script - Option A with Valid User
```
sudo ./sysinfo.bash
```
+ Selections:
      - Choice: A
      - Username: <your-username> (e.g., jsmith123)

+ Expected output:
     - Expected behavior: The UID of user **(username)** is: **100(1,2,0)**
 <img width="1366" height="768" alt="Screenshot from 2025-12-17 11-02-16" src="https://github.com/user-attachments/assets/f74333e5-dffc-4dfb-8017-4ee4f67c9e46" />


#  Step 5: Test Script - Option A with Invalid User
```
sudo ./sysinfo.bash
```
+ Selections:
 - Choice: **A**
 - Username: **nonexistentuser999**
+ Expected output:
  - ERROR: User 'nonexistentuser999' not found.
<img width="1366" height="768" alt="Screenshot from 2025-12-17 11-02-16" src="https://github.com/user-attachments/assets/37ca0e39-2c3d-4047-87fe-9c037663bd69" />

# Step 6: Test Script - Option B with Valid Service
```
sudo ./sysinfo.sh
```
+ Selections:
 - Choice: **B**
  - Service: **accounts-daemon.service**

+ Expected output:
● ssh.service - OpenBSD Secure Shell server
     Loaded: loaded (/lib/systemd/system/ssh.service; enabled; ...)
     Active: active (running) since ...
...
 <img width="1366" height="768" alt="Screenshot from 2025-12-17 11-03-22" src="https://github.com/user-attachments/assets/731cdb48-e832-4cc5-be75-17e4300b3910" />

# Step 7: Test Script - Option B with Invalid Service
```
sudo ./sysinfo.sh
```
+ Selections:
 - Choice: B
- Service: ssh
+ Expected output:
 - Unit ssh.service could not be found.
<img width="1366" height="768" alt="Screenshot from 2025-12-17 11-02-34" src="https://github.com/user-attachments/assets/8319d301-4587-44c5-9b2d-f87986c69e52" />
