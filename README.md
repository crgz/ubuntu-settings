# ubuntu-settings

```
sudo apt remove aisleriot gnome-mahjongg gnome-mines gnome-sudoku snapd

sudo add-apt-repository ppa:noobslab/macbuntu
sudo add-apt-repository ppa:libreoffice/ppa
sudo add-apt-repository ppa:jconti/recent-notifications
sudo add-apt-repository ppa:atareao/atareao

sudo apt install ubuntu-unity-desktop unity-tweak-tool macbuntu-os-icons-v1804 macbuntu-os-ithemes-v1804 plank  macbuntu-os-plank-theme-v1804 indicator-multiload my-weather-indicator indicator-notifications maven

wget https://launchpad.net/~vlijm/+archive/ubuntu/spaceview/+files/spaceview_0.5.6-1_amd64.deb -O spaceview.deb
sudo apt install wmctrl
sudo dpkg -i spaceview.deb

sudo apt-get install google-chrome-stable git terminator synaptic ppa-purge xournal bleachbit

sudo apt-get --with-new-pkgs upgrade

sudo apt-get autoremove --purge 

sudo apt remove gnome-shell

wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | sudo apt-key add -
sudo add-apt-repository 'deb https://repo.vivaldi.com/archive/deb/ stable main'
sudo apt install vivaldi-stable

wget -q http://www.webmin.com/jcameron-key.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] http://download.webmin.com/download/repository sarge contrib"
sudo apt install webmin

```
