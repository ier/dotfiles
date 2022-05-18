# Useful commands

## Bash

### Dump files in octal and other formats
* `echo "text" | od -A x -t x1z -v` - display hexdump format output

### Encode/decode string
* `echo Привет | base64` encode string to base64
* `echo 0J/RgNC40LLQtdGCCg== | base64 -d` decode base64-string back

### iconv
Converts text from one character encoding to another
Here is an [example](https://github.com/ier/dotfiles/blob/main/scripts/enconv.sh) of iconv usage  

### File system
* `ls -lah` list all files in current directory in table view with human-readable way

### Text search
* `grep -rnw 'path/to/place/' -e 'pattern'` - search for pattern in all files (r=recursively, n=show line number, w=match the whole word)
* `grep --include=\*.{clj,edn} -rnw 'path/to/place/' -e 'pattern'` - search in files with specific file name extansions
* `grep --exclude=\*.{sc,hs} -rnw 'path/to/place/' -e 'pattern'` - search in files skipping specific file name extansions
* `grep --exclude-dir={dir1,dir2, *.dst} -rnw 'path/to/place/' -e 'pattern'` - search in all files omitting specific source folders

### SSH key
1. `ssh-keygen -t rsa -b 2048 -C "user@site.com"` generate ssh key
2. `ssh-copy-id -i ~/.ssh/id_rsa.pub user@remote.host.ip` copy public key to remote host

### SCP
* `scp /home/ier/file.txt root@some-ip:/root/` - copy local file to remote folder
* `scp root@some-ip:/root/file.txt /home/ier` - copy remote file to local folder
* `scp root@some-ip:/root/file.txt root@another-ip:/root/` - copy file from one remote server to another remote server  
* `scp -r /home/ier/docs/* root@losst.ru:/root/` - copy all files from local folder to remote server
* `scp -r /home/ier/docs root@losst.ru:/root/` - copy whole local folder to remote server

### Write ISO file to USB Stick
1. Download iso-file from `https://manjaro.org/downloads/official/gnome/`
2. Find out which drive letter your usb-stick has: `sudo fdisk -l`. 
3. Where [drive letter] is the letter of your removable device. Please note that it is the device (e.g. /dev/sdb), and not the partition number (e.g. /dev/sdb1). `sudo dd bs=4M if=/home/ier/Downloads/manjaro-gnome-21.0.7-minimal-210614-linux510.iso of=/dev/sdb status=progress oflag=sync`

### Create a swap file
1. `df -h`
2. `sudo fdisk -l /dev/sda`
3. `sudo dd if=/dev/zero of=/swapfile bs=128M status=progress count=128 oflag=sync`
4. `sudo chmod 600 /swapfile`
5. `sudo mkswap /swapfile`
6. `sudo swapon /swapfile`
7. Edit `fstab` file with `sudo vim /etc/fstab` command (add the following line):
```
/swapfile	none	swap	defaults	0	0
```

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

### Git log
```
git log --graph --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(bold white)— %an%C(reset)%C(bold yellow)%d%C(reset)' --abbrev-commit --date=relative
```
```
git log --oneline --graph --decorate --all --simplify-by-decoration
```

### Fix git commit message text
```
git add .
git commit --amend -m "Fixed comment text"
git push
```

### Java environments
#### Arch
* `archlinux-java status` - List installed Java environments and enabled one
* `archlinux-java set <JAVA_ENV>` - Force <JAVA_ENV> as default
#### Ubuntu
* `sudo update-alternatives --config java`

### Cmus, a lightweight ncurses music player
1. Install with `sudo pacman -S cmus`
2. Run with `cmus`
3. Create a playlist and add songs:
    * `:pl-create my-playlist`
    * `3` to navigate to the playlists window
    * Highlight the new playlist and press `space` to mark it.
    * `:add -p ~/Music/artist/` to add songs from that directory to the marked playlist.

### Find out list of open ports
`ss -lntu`
