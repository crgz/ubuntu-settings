#!/bin/sh
sudo apt remove -y aisleriot gnome-mahjongg gnome-mines gnome-sudoku transmission-* snapd gnome-shell nano

sudo add-apt-repository ppa:libreoffice/ppa -y

sudo apt install -y unity-tweak-tool indicator-multiload maven google-chrome-stable git \
terminator synaptic ppa-purge xournal bleachbit plank

git config --global user.email "5125929+crgz@users.noreply.github.com"
git config --global user.name "Conrado M. Rodriguez"
git config --global core.editor "vi"

sudo apt-get --with-new-pkgs upgrade
sudo apt-get autoremove --purge

for package in my-weather-indicator; do
    dpkg -s "$package" >/dev/null 2>&1 && {
        echo "$package is installed."
    } || {
      sudo add-apt-repository ppa:atareao/atareao
      sudo apt-get install $package
    }
done

for package in indicator-notifications; do
    dpkg -s "$package" >/dev/null 2>&1 && {
        echo "$package is installed."
    } || {
      sudo add-apt-repository ppa:jconti/recent-notifications
      sudo apt-get install $package
    }
done

for package in vivaldi-stable; do
    dpkg -s "$package" >/dev/null 2>&1 && {
        echo "$package is installed."
    } || {
      wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | sudo apt-key add -
      sudo add-apt-repository 'deb https://repo.vivaldi.com/archive/deb/ stable main'
      sudo apt-get install $package
    }
done

for package in webmin; do
    dpkg -s "$package" >/dev/null 2>&1 && {
        echo "$package is installed."
    } || {
      wget -q http://www.webmin.com/jcameron-key.asc -O- | sudo apt-key add -
      sudo add-apt-repository "deb [arch=amd64] http://download.webmin.com/download/repository sarge contrib"
      sudo apt-get install $package
    }
done

for package in spaceview; do
    dpkg -s "$package" >/dev/null 2>&1 && {
        echo "$package is installed."
    } || {
      wget https://launchpad.net/~vlijm/+archive/ubuntu/spaceview/+files/spaceview_0.5.6-1_amd64.deb -O spaceview.deb
      sudo apt install wmctrl
      sudo dpkg -i spaceview.deb
      rm spaceview.deb
    }
done

for package in macbuntu-os-icons-lts-v7 macbuntu-os-ithemes-lts-v7 macbuntu-os-plank-theme-lts-v7; do
    dpkg -s "$package" >/dev/null 2>&1 && {
        echo "$package is installed."
    } || {
      sudo add-apt-repository ppa:noobslab/macbuntu -y
      sudo apt-get install $package
    }
done