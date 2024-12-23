#!/bin/sh
# anytype logseq

# Prepare pacman
sudo mkdir -p /root/.gnupg
sudo pacman-key --init && sudo pacman-key --populate archlinux manjaro && sudo pacman-key --refresh-keys

# Upgrade all

sudo pacman -Syyu --noconfirm



# Install official packages

sudo pacman -S --noconfirm mysql pidgin plank openssh  wine tk libreoffice-fresh nethogs python-pip docker
sudo pacman -S --noconfirm vim synapse samba pamac-gtk steam
sudo pacman -S --noconfirm lutris grafx2
# sudo pacman -S --noconfirm discord
sudo pacman -S --noconfirm obs-studio
sudo pacman -S --noconfirm virtualbox
sudo pacman -S --noconfirm easyeffects
sudo pacman -S --noconfirm winetricks
sudo pacman -S --noconfirm make nodejs npm
sudo pacman -S --noconfirm archlinux-keyring qemu virt-manager virt-viewer dnsmasq vde2 bridge-utils openbsd-netcat
sudo pacman -S --noconfirm lolcat
sudo pacman -S --noconfirm lolcat unrar

# Install AUR

sudo pamac install --no-confirm vivaldi vivaldi-ffmpeg-codecs flatpak libpamac-flatpak-plugin zeal kvantum-qt5;

# Install Flatpak

sudo flatpak install --noninteractive bottles;
sudo flatpak install --noninteractive org.zealdocs.Zeal;
# Install Garuda Package Repository
sudo pamac install --no-confirm powerpill;
sudo pacman -S --needed --noconfirm base-devel;
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si --noconfirm

sudo pacman -Sy && sudo powerpill -Su && paru -Su;


# Install Garuda Package Repository2
sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com;
sudo pacman-key --lsign-key 3056513887B78AEB;
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst';
sudo -- sh -c "echo '[chaotic-aur]
Include = /etc/pacman.d/chaotic-mirrorlist' >> /etc/pacman.conf";
pacman-key --init
sudo pacman -Sy && sudo powerpill -Su && paru -Su;


# Install Garuda Install
#sudo pacman -Sy --noconfirm alacritty-git;
#sudo pacman -Sy --noconfirm expect;
#cd;
#mkdir git;
#cd git;
#git clone https://gitlab.com/garuda-linux/applications/garuda-gamer.git;
#git clone https://gitlab.com/garuda-linux/applications/garuda-libs.git;
#cd garuda-libs;
#makepkg;
#sudo pacman -U --noconfirm garuda-libs*any.pkg*;
#cd ..;
#cd garuda-gamer;
#makepkg;
#sudo pacman -U --noconfirm garuda-gamer*any.pkg*;

# Install Garuda Install
sudo pacman -Sy --noconfirm alacritty-git;
sudo pacman -Sy --noconfirm expect;
cd;
mkdir git;
cd git;
git clone https://gitlab.com/garuda-linux/pkgbuilds.git;
cd pkgbuilds;
cd garuda-libs;
makepkg;
sudo pacman -U --noconfirm garuda-libs*any.pkg*;
cd ..;
cd garuda-gamer;
makepkg;
sudo pacman -U --noconfirm garuda-gamer*any.pkg*;

##USER JOGOT KELL JAVITANI


# Install PyPI
python -m pip install konsave;


# Install Snapcraft
sudo pacman -S --noconfirm snapd;
sudo systemctl enable --now snapd.socket;
sudo ln -s /var/lib/snapd/snap /snap;
sudo systemctl enable --now snapd.socket;
sudo ln -s /var/lib/snapd/snap /snap;
sudo snap install eclipse --classic;
sudo snap install pycharm-community --classic;
sudo snap install discord
sudo snap install rustrover --edge --classic
