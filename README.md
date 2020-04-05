# ubuntu-settings

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update 
sudo apt-get install google-chrome-stable git terminator

sudo apt-add-repository -y ppa:system76-dev/stable
sudo apt install system76-driver system76-driver-nvidia

sudo add-apt-repository ppa:noobslab/macbuntu
sudo apt install  ubuntu-unity-desktop unity-tweak-tool macbuntu-os-icons-v1804 macbuntu-os-ithemes-v1804 plank  macbuntu-os-plank-theme-v1804


sudo apt remove gnome-shell
