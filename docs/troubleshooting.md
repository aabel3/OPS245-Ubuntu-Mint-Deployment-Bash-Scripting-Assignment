# 🔧 Troubleshooting

Common Issues and Solutions

# Problem 1: Cannot set root password
+ Solutions:
```
# Make sure you're using sudo
sudo passwd root
```
```
# If still having issues, check if you're in sudo group
groups
```

# Problem 2: Cinnamon not appearing at login
Solutions:
+ Make sure installation completed: ```**dpkg -l | grep cinnamon**```
+ Reboot the system
+ At login screen, look for gear icon ⚙️ before entering password
+ Select "Cinnamon" from desktop environment list

# Problem 3: User creation - full name not showing
Solutions:
```
# Use -c flag for comment (full name)
sudo useradd -m -c "Alex Smith" asmith12
```
```
# Verify with:
getent passwd asmith12
```

# Problem 4: Script says "not found" when checking service
Solutions:
+ This is expected behavior for invalid services
+ The standard error should be displayed and logged
+ Make sure you're using 2>&1 to capture stderr

# Problem 5: Output file not being created
Solutions:
```
# Check permissions in current directory
ls -la
```
```
# Make sure you have write permission
# Try running from home directory
cd ~
sudo ./sysinfo.bash
```

# Problem 6: Script not executable
Solutions:
```
# Add execute permission
chmod +x sysinfo.sh
```
```
# Verify its permissions
ls -l sysinfo.bash
```
