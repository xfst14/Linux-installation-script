#How this script works

# Fetch update from repos -> Purge unnecessary packages. For necessary apps listed in the system, such as xed and xviewer, you may need to replace them with the flatpak application of your choice because the system version is very outdated.)
# Add Flathub repository
# Install necessary applications (Fcitx5, ibus, bleachbit, kazam, python3-pip, yt-dlp, neofetch, spice-vdagent, flatpak, easyflatpak (flathub),...) and added Fcitx5-Unikey support for the keyboard
#Upgrade your system
#autoremove unnecessary packages
#Defragment system to prevent system file corruption


sudo dnf update

# Removing unnecessary packages from the system
sudo dnf autoremove kasumi okular 
sudo dnf autoremove gnome-keyring libpam-gnome-keyring 
sudo dnf autoremove firefox thunderbird libreoffice-common
sudo dnf autoremove timeshift celluloid rhythmbox
sudo dnf autoremove libreoffice-uiconfig-common libreoffice-uiconfig-writer libreoffice-uiconfig-calc libreoffice-uiconfig-impress libreoffice-uiconfig-draw
sudo dnf autoremove gnome-clocks gnome-calendar gnome-calculator gnome-text-editor eog gnome-screenshot gnome-software
sudo dnf autoremove evince
sudo dnf autoremove xviewer xreader xed
sudo dnf autoremove hypnotix
sudo dnf autoremove drawing
sudo dnf autoremove kwrite gwenview kontact kclock kate kde-spectacle
sudo dnf autoremove imagemagick-6-common
sudo dnf autoremove plasma-discover 
sudo dnf autoremove abrt

#Installing essential packages for the system, for a more complete experience (for items missing due to removal, you need to install the Flathub variant of your choice via the newly installed EasyFlatpak store!)
sudo dnf install fcitx5 fcitx5-unikey bleachbit kazam python3-pip yt-dlp fastfetch spice-vdagent flatpak xserver-xorg-core x11-apps x11-utils xorg software-properties-common software-properties-gtk xwayland
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install flathub org.dupot.easyflatpak
flatpak install flathub io.github.obiwankennedy.HotShots

#Force Wayland to use Kazam to take screenshots of your computer
gsettings set org.gnome.shell disable-extension-version-validation true


# Upgrade the system and defragmenting the system to increase performance, then refreshing the system
sudo dnf upgrade
sudo dnf autoremove
sudo fstrim -av
