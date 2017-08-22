# sshtun
In my daily work I need SSH tunnels to work with remote virtual environments and services.  
I wrote this simple tool to automate the SSH tunneling and to make it easier to switch between environments  
by leveraging dynamic port forwarding with SSH and Firefox profiles. 

## Prerequisites
* macOS
* Firefox

The tool has been tested on macOS Sierra and apart from the Firefox functionallity should work on any other Linux\Unix distro  
without much rework.

# Installation
Run the installer with sudo permissions:
```shell
sudo ./install.sh
```

# Configuration
Open the configuration file and configure the aliasses, IPs and ports:
```shell
sudo vim /etc/sshtun/sshtun.conf
```
Sample config will look something like this:
```
|alias| |address| |ssh_user| |port|

local	127.0.0.1		root		5557
example	192.168.10.1		foo		5558
```

# Usage examples
## Starting a tunel
```shell
sshtun -s alias
```
## Listing active tunnels
```shell
sshtun -l
```

## Closing all tunnels
```shell
sshtun -k
```

## Open Firefox instance with the created profile
```shell
sshtun -r alias
```
### Creating and opening simultaneously
```shell
sshtun -s alias -r alias
```

### Display aliases
If for some reason you forgot your aliases you can simply show them:
```shell
sshtun -c
```

# Issues And Limitations
1. Chaining multiple command options does not work properly  
The current implementation of the options parsing does not handle chaining very well
  
Example:
```shell
# This will NOT WORK
sshtun -sr alias
```


