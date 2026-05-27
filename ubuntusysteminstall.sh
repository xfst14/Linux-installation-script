#How this script works

# Fetch update from repos -> Purge unnecessary packages. For necessary apps listed in the system, such as xed and xviewer, you may need to replace them with the flatpak application of your choice because the system version is very outdated.)
# Add Flathub repository
# Install necessary applications (Fcitx5, ibus, bleachbit, kazam, python3-pip, yt-dlp, neofetch, spice-vdagent, flatpak, easyflatpak (flathub),...) and added Fcitx5-Unikey support for the keyboard
#Upgrade your system
#Autopurge unnecessary packages
#Defragment system to prevent system file corruption

sudo add-apt-repository ppa:zhangsongcui3371/fastfetch
sudo apt update

# Removing unnecessary packages from the system
sudo apt autopurge kasumi okular
sudo apt autopurge gnome-keyring libpam-gnome-keyring 
sudo apt autopurge firefox thunderbird libreoffice-common
sudo apt autopurge timeshift celluloid rhythmbox
sudo apt autopurge libreoffice-uiconfig-common libreoffice-uiconfig-writer libreoffice-uiconfig-calc libreoffice-uiconfig-impress libreoffice-uiconfig-draw
sudo apt autopurge gnome-clocks gnome-calendar gnome-calculator gnome-text-editor eog gnome-screenshot
sudo apt autopurge evince
sudo apt autopurge xviewer xreader xed
sudo apt autopurge hypnotix
sudo apt autopurge drawing
sudo apt autopurge kwrite gwenview kontact kclock kate kde-spectacle
sudo apt autopurge snapd
sudo apt autopurge imagemagick-6-common
sudo apt autopurge mintinstall
sudo apt autopurge plasma-discover
sudo apt autopurge ubuntu-report whoopsie

#Installing essential packages for the system, for a more complete experience (for items missing due to removal, you need to install the Flathub variant of your choice via the newly installed EasyFlatpak store!)
sudo apt install fcitx5 fcitx5-unikey bleachbit kazam python3-pip yt-dlp fastfetch spice-vdagent flatpak xserver-xorg-core x11-apps x11-utils xorg software-properties-common software-properties-gtk xwayland
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install flathub org.dupot.easyflatpak
flatpak install flathub io.github.obiwankennedy.HotShots

#Force Wayland to use Kazam to take screenshots of your computer
gsettings set org.gnome.shell disable-extension-version-validation true


# Upgrade the system and defragmenting the system to increase performance, then refreshing the system
sudo apt upgrade
sudo apt autopurge
sudo fstrim -av
