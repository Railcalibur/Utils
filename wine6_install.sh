sudo dpkg --add-architecture i386
sudo apt update
wget -qO- https://dl.winehq.org/wine-builds/winehq.key | sudo apt-key add -
sudo apt install software-properties-common
sudo apt-add-repository "deb http://dl.winehq.org/wine-builds/ubuntu/ $(lsb_release -cs) main"
sudo apt install --install-recommends winehq-stable -y
sudo apt-get install winetricks -y
winetricks riched20
winetricks riched32
echo "$(tput setaf 1)Please copy 'windows/Fonts' into '~/.wine/drive_c/windows'$(tput sgr 0)"
wine --version
