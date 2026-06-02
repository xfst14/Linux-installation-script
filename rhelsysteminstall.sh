#How this script works

# Fetch update from repos -> Purge unnecessary packages. For necessary apps listed in the system, such as xed and xviewer, you may need to replace them with the flatpak application of your choice because the system version is very outdated.)
# Add Flathub repository
# Install necessary applications (Fcitx5, ibus, bleachbit, kazam, python3-pip, yt-dlp, neofetch, spice-vdagent, flatpak, easyflatpak (flathub),...) and added Fcitx5-Unikey support for the keyboard
#Upgrade your system
#autoremove unnecessary packages
#Defragment system to prevent system file corruption


sudo dnf update -y

# Removing unnecessary packages from the system
sudo dnf autoremove kasumi okular -y
sudo dnf autoremove gnome-keyring libpam-gnome-keyring -y
sudo dnf autoremove firefox thunderbird libreoffice-common -y
sudo dnf autoremove timeshift celluloid rhythmbox -y
sudo dnf autoremove libreoffice-uiconfig-common libreoffice-uiconfig-writer libreoffice-uiconfig-calc libreoffice-uiconfig-impress libreoffice-uiconfig-draw -y
sudo dnf autoremove gnome-clocks gnome-calendar gnome-calculator gnome-text-editor eog gnome-screenshot gnome-software flatpak -y
sudo dnf autoremove evince -y
sudo dnf autoremove xviewer xreader xed -y
sudo dnf autoremove hypnotix -y
sudo dnf autoremove drawing -y
sudo dnf autoremove kwrite gwenview kontact kclock kate kde-spectacle -y
sudo dnf autoremove imagemagick-6-common -y
sudo dnf autoremove plasma-discover -y
sudo dnf autoremove abrt -y

#Installing essential packages for the system, for a more complete experience (for items missing due to removal, you need to install the Flathub variant of your choice via the newly installed EasyFlatpak store!)
sudo dnf install fcitx5 fcitx5-unikey bleachbit kazam python3-pip yt-dlp fastfetch spice-vdagent flatpak software-properties-common software-properties-gtk -y
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install -y flathub org.dupot.easyflatpak
flatpak install -y flathub io.github.obiwankennedy.HotShots

#Force Wayland to use Kazam to take screenshots of your computer
gsettings set org.gnome.shell disable-extension-version-validation true


# Upgrade the system and defragmenting the system to increase performance, then refreshing the system
sudo dnf upgrade -y
sudo dnf autoremove -y
sudo e4defrag /home 
