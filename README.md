# linux-server-scripts
Scripts I use on Linux servers

## Update and restart
A debian based script that runs apt update, upgrade and dist-update then reboots the server.
``` bash
$ chmod u+x /home/user/linux-server-scripts/update_and_restart.sh
```
### Crontab Configuration
The statement below would reboot the computer every sunday at 12:00am.
```
crontab -e
```
```
0 0 * * SUN /home/user/linux-server-scripts/update_and_restart.sh
```
