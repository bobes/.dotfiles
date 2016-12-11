# dotfiles

## Bootstrap

Update, upgrade and install basic packages:
```
su -c 'apt-get update && apt-get upgrade && apt-get install sudo git stow'
```

Generate new ssh key:
```
cd ~
ssh-keygen -t rsa -b 4096
cat .ssh/id_rsa.pub
```

Log into github and add the new ssh key.

Clone .dotfiles repository from github:
```
cd ~
git clone git@github.com:bobes/.dotfiles.git
```

Add user to sudoers:
```
su 'cp ~/.dotfiles/etc/sudoers.d/sudoers-bobes /etc/sudoers.d/ && chown 0 /etc/sudoers.d/sudoers-bobes && chmod 0400 /etc/sudoers.d/sudoers-bobes'
```
