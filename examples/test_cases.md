
Step 21: Make Script Executable
bashchmod +x sysinfo.sh
Verify permissions:
bashls -l sysinfo.sh
Expected output: -rwxr-xr-x 1 username username 3456 Dec 1 10:30 sysinfo.sh
Attach screenshot of terminal showing script permissions with ls -l command
Step 22: Test Script - Run Without Sudo (Should Fail)
bash./sysinfo.sh
Expected output:
ERROR: This script must be run with sudo
Usage: sudo ./sysinfo.sh
Attach screenshot of error message when running script without sudo
Step 23: Test Script - Invalid Input Handling
bashsudo ./sysinfo.sh
When prompted, enter: X
Expected behavior: Script displays error and asks again
Then enter: 5
Expected behavior: Script displays error and asks again
Finally enter: A
Expected behavior: Script accepts input and continues
Attach screenshot of terminal showing invalid input handling (entering X, then 5, then A)
Step 24: Test Script - Option A with Valid User
bashsudo ./sysinfo.sh
Selections:

Choice: A
Username: <your-username> (e.g., jsmith123)

Expected output:
SUCCESS: User 'jsmith123' found!

User ID (UID): 1000

Complete user information:
uid=1000(jsmith123) gid=1000(jsmith123) groups=...
Attach screenshot of script output showing Option A with valid username
Step 25: Test Script - Option A with Invalid User
bashsudo ./sysinfo.sh
Selections:

Choice: A
Username: nonexistentuser999

Expected output:
ERROR: User 'nonexistentuser999' does not exist on this system.
Script will now exit.
Attach screenshot of script output showing Option A with invalid username and error message
Step 26: Test Script - Option B with Valid Service
bashsudo ./sysinfo.sh
Selections:

Choice: B
Service: ssh

Expected output:
● ssh.service - OpenBSD Secure Shell server
     Loaded: loaded (/lib/systemd/system/ssh.service; enabled; ...)
     Active: active (running) since ...
...
Attach screenshot of script output showing Option B with valid service (ssh)
Step 27: Test Script - Option B with Invalid Service
bashsudo ./sysinfo.sh
Selections:

Choice: B
Service: fakeservice123

Expected output:
Unit fakeservice123.service could not be found.
Attach screenshot of script output showing Option B with invalid service and error message
Step 28: Verify Output File
bashcat sysinfo-output.txt
Expected: File contains all output from your last test
bashls -lh sysinfo-output.txt
Expected: File exists and has content
Attach screenshot of terminal showing contents of sysinfo-output.txt file
