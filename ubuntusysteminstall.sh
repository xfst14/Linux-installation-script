#How this script works

# Fetch update from repos -> Purge unnecessary packages. For necessary apps listed in the system, such as xed and xviewer, you may need to replace them with the flatpak application of your choice because the system version is very outdated.)
# Add Flathub repository
# Install necessary applications (Fcitx5, ibus, bleachbit, kazam, python3-pip, yt-dlp, neofetch, spice-vdagent, flatpak, easyflatpak (flathub),...) and added Fcitx5-Unikey support for the keyboard
#Upgrade your system
#Autopurge unnecessary packages
#Defragment system to prevent system file corruption



sudo apt update -y

sudo add-apt-repository ppa:zhangsongcui3371/fastfetch -y
sudo apt update  -y

# Removing unnecessary packages from the system
sudo apt autopurge kasumi okular -y
sudo apt autopurge gnome-keyring libpam-gnome-keyring -y
sudo apt autopurge firefox thunderbird libreoffice-common -y
sudo apt autopurge timeshift celluloid rhythmbox -y
sudo apt autopurge libreoffice-uiconfig-common libreoffice-uiconfig-writer libreoffice-uiconfig-calc libreoffice-uiconfig-impress libreoffice-uiconfig-draw -y
sudo apt autopurge gnome-clocks gnome-calendar gnome-calculator gnome-text-editor eog gnome-screenshot gnome-software -y
sudo apt autopurge evince loupe papers -y
sudo apt autopurge xviewer xreader xed -y
sudo apt autopurge hypnotix -y
sudo apt autopurge drawing -y
sudo apt autopurge kwrite gwenview kontact kclock kate kde-spectacle -y
sudo apt autopurge snapd -y
sudo apt autopurge imagemagick-6-common -y
sudo apt autopurge mintinstall -y
sudo apt autopurge plasma-discover ubuntu-mate-welcome lite-software -y
sudo apt autopurge ubuntu-report whoopsie -y

#Installing essential packages for the system, for a more complete experience (for items missing due to removal, you need to install the Flathub variant of your choice via the newly installed EasyFlatpak store!)
sudo apt install fcitx5 fcitx5-unikey bleachbit kazam python3-pip yt-dlp fastfetch spice-vdagent flatpak software-properties-common software-properties-gtk curl -y

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install -y flathub org.dupot.easyflatpak
flatpak install -y flathub com.github.tchx84.Flatseal
flatpak install -y flathub io.github.obiwankennedy.HotShots

sudo apt update -y
sudo apt --fix-broken install -y
sudo apt full-upgrade -y

#Force Wayland to use Kazam to take screenshots of your computer
gsettings set org.gnome.shell disable-extension-version-validation true

# Defragmenting the system to increase performance, then refreshing the system
sudo apt autopurge -y
sudo e4defrag /home

