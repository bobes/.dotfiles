sudoers::
	su -c 'rm -f /etc/sudoers.d/* && cp /home/bobes/.dotfiles/etc/sudoers.d/* /etc/sudoers.d/ && chown 0 /etc/sudoers.d/* && chmod 0400 /etc/sudoers.d/*'

apt: apt-keys apt-sources apt-refresh apt-install

apt-keys::
	sudo apt-key add etc/apt/signing_keys/brave.pub
	sudo apt-key add etc/apt/signing_keys/docker.pub
	sudo apt-key add etc/apt/signing_keys/dropbox.pub
	sudo apt-key add etc/apt/signing_keys/enpass.pub
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
		autoconf \
		automake \
		bison \
		build-essential \
		ca-certificates \
		compton \
		curl \
		dnsutils \
		docker-compose \
		docker-engine \
		dropbox \
		enpass \
		exuberant-ctags \
		feh \
		git \
		git-core \
		gnupg2 \
		google-chrome-stable \
		heroku \
		htop \
		i3 \
		i3blocks \
		imagemagick \
		libcurl4-openssl-dev \
		libffi-dev \
		libgdbm-dev \
		libgdbm3 \
		libinput-tools \
		libncurses5-dev \
		libnotify-bin \
		libpng16-16 \
		libreadline-dev \
		libsqlite3-dev \
		libssl-dev \
		libtool \
		libxml2-dev \
		libxslt1-dev \
		libyaml-dev \
		linux-image-amd64 \
		linux-headers-amd64 \
		lxappearance \
		nfs-common \
		patch \
		powertop \
		python-gpgme \
		qtpass \
		scrot \
		spotify-client \
		sqlite3 \
		ssh-askpass \
		strace \
		tlp \
		tmux \
		virtualbox-5.1 \
		vlc \
		zlib1g-dev
	sudo apt autoremove

install::
	stow -v stow
	stow -v home
	chmod 600 ~/.ssh/config
	chmod 700 ~/.ssh/config.d
	chmod 600 ~/.ssh/config.d/*
	sudo stow -v -t /usr/local/bin -d ~/.dotfiles/usr/local/ bin
	sudo stow -v -t /usr/local/sbin -d ~/.dotfiles/usr/local/ sbin
