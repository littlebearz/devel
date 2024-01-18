# Development Machine Setup

One Line Installer Script: 
```bash
wget -O initialize.sh https://github.com/littlebearz/devel/raw/master/initialize.sh | bash
```

Line 1-2 Comment Section

Line 3-5 Grab latest /etc/sources.list and upgrade packages to latest automatically with -y (yes) flag
- Example: git and wget

Line 7-8 Download and Install debian keyrings (all application are signed by developers so it's genuine.)

Line 10-11 DNS Settings

Line 13-14  TimeZone settings to US-East and synchronize the clock.