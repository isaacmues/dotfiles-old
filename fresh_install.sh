#!/bin/bash

### Fresh install for Fedora

dnf -y update

dnf groupinstall -y Python* 'C Development Tools and Libraries'

dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

dnf install -y alacritty \
            starship \
            bat \
            exa \
            lsd \
            vim \
            awesome-vim-colorschemes \
            vim-jedi \
            vim-latex* \
            vim-syntastic \
            vim-syntastic-c \
            vim-syntastic-cpp \
            vim-syntastic-julia \
            vim-syntastic-python \
            vim-syntastic-tex \
            vim-fugitive \
            zathura \
            zathura-plugins-all \
            zathura-zsh-completion \
            python3-dotenv \
            julia \
            nmap \
            nikto \
            hydra \
            medusa \
            texlive* \
            discord \
            steam \
            thunderbird \
            ffmpeg \
            p7zip* \
            unrar \
            steghide \
            mediawriter \
            arm-image-installer \
            gcc-c++ \
            vlc \
            gimp \
            feh \
            inkscape \
            mpv \
            dictd \
            figlet \
            fortune-mod \
            zork \
            caca-utils \
            util-linux-user \
            chafa \
            pigz \
            neofetch \
            i3 \
            picom \
            light \
            dunst \
            black \
            zsh \
            autojump-zsh \
            zsh-autosuggestions \
            zsh-syntax-highlighting \
            network-manager-applet \
            chromium-freeworld \
            nautilus-dropbox \
            youtube-dl \
            ranger \
            flatpak \
            transmission \
            gparted \
            keepassxc \
            djview4 \
            lxappearance \
            sweet-gtk-theme \
            materia-gtk-theme \
            candy-icon-theme \
            deepin-gtk-theme \
            deepin-icon-theme \
            flameshot \
            lm_sensors \
            units \
            polkit-gnome \
            numlockx

# Install Nerdfont for Powerlevel10k
mkdir /usr/share/fonts/meslolgs-nf/

sudo -u $USER wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
sudo -u $USER wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
sudo -u $USER wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
sudo -u $USER wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf

mv MesloLGS*.ttf /usr/share/fonts/meslolgs-nf/

fc-cache -v

# Change shell
chsh -s /bin/zsh $USER

# VirtualBox
dnf -y install VirtualBox kernel-devel-$(uname -r) akmod-VirtualBox
akmods
systemctl restart vboxdrv
usermod -a -G vboxusers $USER

# Spotify
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.spotify.Client
