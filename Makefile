sudoers::
	su -c 'rm -f /etc/sudoers.d/* && cp /home/bobes/.dotfiles/etc/sudoers.d/* /etc/sudoers.d/ && chown 0 /etc/sudoers.d/* && chmod 0400 /etc/sudoers.d/*'

apt: apt-keys apt-sources apt-refresh apt-install

apt-keys::
	sudo apt-key add etc/apt/signing_keys/dropbox.pub
	sudo apt-key add etc/apt/signing_keys/google.pub
	sudo apt-key add etc/apt/signing_keys/spotify.pub

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
		dnscrypt-proxy \
		curl \
		htop \
		ack-grep \
		git \
		apt-transport-https ca-certificates gnupg2 \
		autoconf bison build-essential libssl-dev libyaml-dev libreadline-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev \
		libinput-tools \
		xinput \
		xbacklight \
		lxappearance \
		numix-gtk-theme \
		i3 \
		virtualbox \
		compton \
		rofi \
		python-gpgme \
		dropbox \
		google-chrome-stable \
		spotify-client

install::
	stow -v stow
	stow -v home
	chmod 600 ~/.ssh/config
	chmod 700 ~/.ssh/config.d
	chmod 600 ~/.ssh/config.d/*
