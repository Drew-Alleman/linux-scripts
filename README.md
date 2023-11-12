# linux-server-scripts
Scripts I use on Linux servers

## Making a Script Executable
``` bash
$ chmod u+x /home/user/linux-server-scripts/<SCRIPT>.sh
```

## Update and restart
A debian based script that runs apt update, upgrade and dist-update then reboots the server.
### Crontab Configuration
The statement below would reboot the computer every sunday at 12:00am.
```
crontab -e
```
```
0 0 * * SUN /home/user/linux-server-scripts/update_and_restart.sh
```

## Font Installer
A script used to install fonts from a zip file to ```~/.local/share/fonts/```.
#### Usage
```
drew@ubuntu:~/Downloads$ ~/install_fonts.sh FantasqueSansMono.zip 
Archive:  FantasqueSansMono.zip
  inflating: /home/drew/.local/share/fonts/FantasqueSansMNerdFont-Regular.ttf  
  inflating: /home/drew/.local/share/fonts/FantasqueSansMNerdFontMono-Regular.ttf  
  inflating: /home/drew/.local/share/fonts/FantasqueSansMNerdFontPropo-Regular.ttf  
  inflating: /home/drew/.local/share/fonts/FantasqueSansMNerdFontPropo-BoldItalic.ttf  
  inflating: /home/drew/.local/share/fonts/FantasqueSansMNerdFont-BoldItalic.ttf  
  inflating: /home/drew/.local/share/fonts/FantasqueSansMNerdFontMono-BoldItalic.ttf  
  inflating: /home/drew/.local/share/fonts/FantasqueSansMNerdFont-Bold.ttf  
  inflating: /home/drew/.local/share/fonts/FantasqueSansMNerdFontMono-Bold.ttf  
  inflating: /home/drew/.local/share/fonts/FantasqueSansMNerdFontPropo-Bold.ttf  
  inflating: /home/drew/.local/share/fonts/FantasqueSansMNerdFontMono-Italic.ttf  
  inflating: /home/drew/.local/share/fonts/FantasqueSansMNerdFontPropo-Italic.ttf  
  inflating: /home/drew/.local/share/fonts/FantasqueSansMNerdFont-Italic.ttf  
  inflating: /home/drew/.local/share/fonts/OFL.txt  
replace /home/drew/.local/share/fonts/readme.md? [y]es, [n]o, [A]ll, [N]one, [r]ename: n
/usr/share/fonts: caching, new cache contents: 0 fonts, 6 dirs
/usr/share/fonts/X11: caching, new cache contents: 0 fonts, 4 dirs

```
