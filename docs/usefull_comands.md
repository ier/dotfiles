# Useful commands

## Bash

### Encode/decode string:
* `echo Привет | base64` encode string to base64
* `echo 0J/RgNC40LLQtdGCCg== | base64 -d` decode base64-string back

### File system:
* `ls -lah` list all files in current directory in table view with human-readable way

### Text search
* `grep -rnw 'path/to/place/' -e 'pattern'` - search for pattern in all files (r=recursively, n=show line number, w=match the whole word)
* `grep --include=\*.{clj,edn} -rnw 'path/to/place/' -e 'pattern'` - search in files with specific file name extansions
* `grep --exclude=\*.{sc,hs} -rnw 'path/to/place/' -e 'pattern'` - search in files skipping specific file name extansions
* `grep --exclude-dir={dir1,dir2, *.dst} -rnw 'path/to/place/' -e 'pattern'` - search in all files omitting specific source folders

### SSH key:
* `ssh-keygen -t rsa -b 2048 -C "user@site.com"` generate ssh key
* `ssh-copy-id -i ~/.ssh/id_rsa.pub user@remote.host.name` copy public key to remote host
