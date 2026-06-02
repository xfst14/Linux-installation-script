#How this script works

# Fetch update from repos -> Purge unnecessary packages. For necessary apps listed in the system, such as xed and xviewer, you may need to replace them with the flatpak application of your choice because the system version is very outdated.)
# Add Flathub repository
# Install necessary applications (Fcitx5, ibus, bleachbit, kazam, python3-pip, yt-dlp, neofetch, spice-vdagent, flatpak, easyflatpak (flathub),...) and added Fcitx5-Unikey support for the keyboard
#Upgrade your system
#autoremove unnecessary packages
#Defragment system to prevent system file corruption

#!/usr/bin/env bash

sudo dnf update -y

# Removing unnecessary packages from the system
sudo dnf remove kasumi okular -y
sudo dnf remove gnome-keyring libpam-gnome-keyring -y
sudo dnf remove firefox thunderbird libreoffice-common -y
sudo dnf remove timeshift celluloid rhythmbox -y
sudo dnf remove libreoffice-uiconfig-common libreoffice-uiconfig-writer libreoffice-uiconfig-calc libreoffice-uiconfig-impress libreoffice-uiconfig-draw -y
sudo dnf remove gnome-clocks gnome-calendar gnome-calculator gnome-text-editor eog gnome-screenshot gnome-software flatpak -y
sudo dnf remove evince -y
sudo dnf remove xviewer xreader xed -y
sudo dnf remove hypnotix -y
sudo dnf remove drawing -y
sudo dnf remove kwrite gwenview kontact kclock kate kde-spectacle -y
sudo dnf remove imagemagick-6-common -y
sudo dnf remove plasma-discover -y
sudo dnf remove abrt -y

#Installing essential packages for the system, for a more complete experience (for items missing due to removal, you need to install the Flathub variant of your choice via the newly installed EasyFlatpak store!)
sudo dnf install fcitx5 fcitx5-unikey bleachbit kazam python3-pip yt-dlp fastfetch spice-vdagent flatpak  -y
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install -y flathub org.dupot.easyflatpak
flatpak install -y flathub io.github.obiwankennedy.HotShots

#Force Wayland to use Kazam to take screenshots of your computer
gsettings set org.gnome.shell disable-extension-version-validation true


# Upgrade the system and defragmenting the system to increase performance, then refreshing the system
sudo dnf upgrade -y
sudo dnf autoremove -y
sudo e4defrag /home 
