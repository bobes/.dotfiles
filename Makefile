sudoers::
	su -c 'rm -f /etc/sudoers.d/* && cp /home/bobes/.dotfiles/etc/sudoers.d/* /etc/sudoers.d/ && chown 0 /etc/sudoers.d/* && chmod 0400 /etc/sudoers.d/*'

apt: apt-keys apt-sources apt-refresh apt-install

apt-keys::
	sudo apt-key add etc/apt/signing_keys/google.pub

apt-sources::
	sudo rm /etc/apt/sources.list.d/*
	sudo cp etc/apt/sources.list.d/* /etc/apt/sources.list.d/
	sudo chown 0 /etc/apt/sources.list.d/*
	sudo chmod 644 /etc/apt/sources.list.d/*

apt-refresh::
	sudo apt-get update
	sudo apt-get upgrade

apt-install::
	sudo apt-get install \
		curl git \
		libinput-tools xinput \
		lxappearance \
		i3 virtualbox \
		google-chrome-stable
