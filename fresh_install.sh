#!/bin/bash

### Fresh install for Fedora

dnf -y update

dnf groupinstall Python* 'C Development Tools and Libraries'

dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

dnf install alacritty \
            starship \
            awesome-vim-colorschemes \
            bat \
            exa \
            vim \
            zathura \
            zathura-plugins-all \
            zathura-bash-completion \
            python3-discord \
            python3-dotenv \
            julia \
            nmap \
            texlive* \
            discord \
            steam \
            thunderbird \
            gnome-tweaks \
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
            black
