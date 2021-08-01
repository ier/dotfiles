# Useful commands

## Bash

### Encode/decode string
* `echo Привет | base64` encode string to base64
* `echo 0J/RgNC40LLQtdGCCg== | base64 -d` decode base64-string back

### File system
* `ls -lah` list all files in current directory in table view with human-readable way

### Text search
* `grep -rnw 'path/to/place/' -e 'pattern'` - search for pattern in all files (r=recursively, n=show line number, w=match the whole word)
* `grep --include=\*.{clj,edn} -rnw 'path/to/place/' -e 'pattern'` - search in files with specific file name extansions
* `grep --exclude=\*.{sc,hs} -rnw 'path/to/place/' -e 'pattern'` - search in files skipping specific file name extansions
* `grep --exclude-dir={dir1,dir2, *.dst} -rnw 'path/to/place/' -e 'pattern'` - search in all files omitting specific source folders

### SSH key
1. `ssh-keygen -t rsa -b 2048 -C "user@site.com"` generate ssh key
2. `ssh-copy-id -i ~/.ssh/id_rsa.pub user@remote.host.name` copy public key to remote host

### Write ISO file to USB Stick
1. Download iso-file from `https://manjaro.org/downloads/official/gnome/`
2. Find out which drive letter your usb-stick has: `sudo fdisk -l`. 
3. Where [drive letter] is the letter of your removable device. Please note that it is the device (e.g. /dev/sdb), and not the partition number (e.g. /dev/sdb1). `sudo dd bs=4M if=/home/ier/Downloads/manjaro-gnome-21.0.7-minimal-210614-linux510.iso of=/dev/sdb status=progress oflag=sync`

### Global .gitignore 
1. Create `~/.gitignore_global`
2. Add some rules to it. Consider to use this handy service `https://gitignore.io` E.g. rules for [Clojure](https://www.toptal.com/developers/gitignore/api/clojure).
3. Add vs-code specific rules:
```
.calva/
.clj-kondo/
.lsp/
```
4. Run command `$ git config --global core.excludesfile ~/.gitignore_global`
