sudoers::
	su -c 'rm -f /etc/sudoers.d/* && cp /home/bobes/.dotfiles/etc/sudoers.d/* /etc/sudoers.d/ && chown 0 /etc/sudoers.d/* && chmod 0400 /etc/sudoers.d/*'

apt: apt-keys apt-sources apt-refresh apt-install

apt-keys::
	sudo apt-key add etc/apt/signing_keys/docker.pub
	sudo apt-key add etc/apt/signing_keys/dropbox.pub
	sudo apt-key add etc/apt/signing_keys/google.pub
	sudo apt-key add etc/apt/signing_keys/heroku.pub
	sudo apt-key add etc/apt/signing_keys/spotify.pub
	sudo apt-key add etc/apt/signing_keys/virtualbox.pub

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
		ack-grep \
		apt-transport-https \
		autofs \
		ssh-askpass \
		autoconf \
		automake \
		bison \
		build-essential \
		ca-certificates gnupg2 \
		compton \
		curl \
		dex \
		dnscrypt-proxy \
		docker-engine \
		dropbox \
		feh \
		git \
		git-core \
		google-chrome-stable \
		heroku \
		htop \
		i3 \
		i3blocks \
		libcurl4-openssl-dev \
		libffi-dev \
		libgdbm-dev \
		libgdbm3 \
		libinput-tools \
		libncurses5-dev \
		libnotify-bin \
		libreadline-dev \
		libsqlite3-dev \
		libssl-dev \
		libtool \
		libxml2-dev \
		libxslt1-dev \
		libyaml-dev \
		lxappearance \
		nfs-common \
		numix-gtk-theme \
		patch \
		powertop \
		python-gpgme \
		qtpass \
		rofi \
		scrot \
		spotify-client \
		sqlite3 \
		strace \
		tlp \
		virtualbox-5.1 \
		xautolock \
		xbacklight \
		xinput \
		zlib1g-dev
	sudo apt autoremove

install::
	stow -v stow
	stow -v home
	chmod 600 ~/.ssh/config
	chmod 700 ~/.ssh/config.d
	chmod 600 ~/.ssh/config.d/*
