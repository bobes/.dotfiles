sudoers::
	su -c 'rm -f /etc/sudoers.d/* && cp /home/bobes/.dotfiles/etc/sudoers.d/* /etc/sudoers.d/ && chown 0 /etc/sudoers.d/* && chmod 0400 /etc/sudoers.d/*'

apt: apt-keys apt-sources apt-refresh apt-install

apt-keys::
	sudo apt-key add etc/apt/signing_keys/dropbox.pub
	sudo apt-key add etc/apt/signing_keys/enpass.pub
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
		curl \
		git \
		libinput-tools \
		xinput \
		lxappearance \
		numix-gtk-theme \
		i3 \
		virtualbox \
		rofi \
		python-gpgme \
		dropbox \
		enpass \
		google-chrome-stable \
		spotify-client

install: bash bin

bash::
	stow -v bash
	. ~/.bash_profile

bin::
	mkdir -p ~/bin
	rm -rf ~/bin/*
	stow -v -t ~/bin bin

gtk::
	mkdir -p ~/.config/gtk-3.0
	rm -rf ~/.config/gtk-3.0/*
	stow -v -t ~/.config/gtk-3.0 gtk

i3::
	mkdir -p ~/.config/i3
	rm -rf ~/.config/i3/*
	stow -v -t ~/.config/i3 i3
