# Add Ibus Bamboo script -> fetch update from repos -> install necessary applications (ibus-bamboo, ibus, bleachbit, kazam, python3-pip, yt-dlp, neofetch, spice-vdagent, flatpak)
# Add Flathub repository
# Purge unnecessary packages. For necessary apps listed in the system, such as xed and xviewer, you may need to replace them with the flatpak version because the system version is very outdated. (apt autopurge gnome-keyring, libpam-gnome-keyring, gstreamer1.0-vaapi, firefox, thunderbird, libreoffice-common, timeshift, celluloid, rhythmbox, libreoffice-uiconfig-common, libreoffice-uiconfig-writer, libreoffice-uiconfig-calc, libreoffice-uiconfig-impress, libreoffice-uiconfig-draw, gnome-calendar, gnome-calculator, xviewer, xreader, drawing, hypnotix, xed, snapd, gwenview, kwrite, kontact )
#Upgrade your system
#Autopurge unnecessary packages
#Defragment system to prevent system file corruption
#Restart your computer to finish updates.

sudo apt update

sudo apt autopurge gnome-keyring libpam-gnome-keyring gstreamer1.0-vaapi
sudo apt autopurge firefox thunderbird libreoffice-common
sudo apt autopurge timeshift celluloid rhythmbox
sudo apt autopurge libreoffice-uiconfig-common libreoffice-uiconfig-writer libreoffice-uiconfig-calc libreoffice-uiconfig-impress libreoffice-uiconfig-draw
sudo apt autopurge gnome-clocks gnome-calendar gnome-calculator gnome-text-editor eog
sudo apt autopurge evince
sudo apt autopurge xviewer xreader xed
sudo apt autopurge hypnotix
sudo apt autopurge drawing
sudo apt autopurge kwrite gwenview kontact kclock kate
sudo apt autopurge snapd
sudo apt autopurge imagemagick-6-common
sudo apt autopurge mintinstall
sudo apt autopurge plasma-discover
sudo apt autopurge ubuntu-report whoopsie

sudo apt install fcitx5 fcitx5-unikey bleachbit kazam python3-pip yt-dlp neofetch spice-vdagent flatpak xserver-xorg-core x11-apps x11-utils xorg software-properties-common software-properties-gtk xwayland
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install flathub org.dupot.easyflatpak

sudo apt upgrade
sudo apt autopurge
sudo e4defrag /home

