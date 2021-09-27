#!/bin/sh
sudo apt remove -y aisleriot gnome-mahjongg gnome-mines gnome-sudoku snapd gnome-shell nano

sudo add-apt-repository ppa:libreoffice/ppa -y

sudo apt install -y unity-tweak-tool maven git terminator synaptic ppa-purge xournal bleachbit plank \
indicator-multiload nmap gimp smbclient

git config --global user.email "5125929+crgz@users.noreply.github.com"
git config --global user.name "Conrado M. Rodriguez"
git config --global core.editor "vi"

sudo apt-get --with-new-pkgs upgrade
sudo apt-get autoremove --purge

# Install from PPA

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

for package in webmin; do
    dpkg -s "$package" >/dev/null 2>&1 && {
        echo "$package is installed."
    } || {
      wget -q http://www.webmin.com/jcameron-key.asc -O- | sudo apt-key add -
      sudo add-apt-repository "deb [arch=amd64] http://download.webmin.com/download/repository sarge contrib"
      sudo apt-get install $package
    }
done

# Install from Download deb files

for package in macbuntu-os-icons-v9; do
    dpkg -s "$package" >/dev/null 2>&1 && {
        echo "$package is installed."
    } || {
      wget -qO https://launchpadlibrarian.net/322222558/macbuntu-os-icons-v9_3.22~zesty~NoobsLab.com_all.deb
      sudo dpkg -i macbuntu-os-icons-v9_3.22~zesty~NoobsLab.com_all.deb
      rm macbuntu-os-icons-v9_3.22~zesty~NoobsLab.com_all.deb
    }
done

for package in macbuntu-os-ithemes-v9; do
    dpkg -s "$package" >/dev/null 2>&1 && {
        echo "$package is installed."
    } || {
      wget -qO https://launchpadlibrarian.net/324242017/macbuntu-os-ithemes-v9_3.22-1~zesty~NoobsLab.com_all.deb
      sudo dpkg -i macbuntu-os-ithemes-v9_3.22-1~zesty~NoobsLab.com_all.deb
      rm macbuntu-os-ithemes-v9_3.22-1~zesty~NoobsLab.com_all.deb
    }
done

for package in macbuntu-os-plank-theme-v9; do
    dpkg -s "$package" >/dev/null 2>&1 && {
        echo "$package is installed."
    } || {
      wget -qO https://launchpadlibrarian.net/322222609/macbuntu-os-plank-theme-v9_3.22~zesty~NoobsLab.com_all.deb
      sudo dpkg -i macbuntu-os-plank-theme-v9_3.22~zesty~NoobsLab.com_all.deb
      rm macbuntu-os-plank-theme-v9_3.22~zesty~NoobsLab.com_all.deb
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

for package in idea; do
    ! command -v idea &> /dev/null && {
        echo "$package is installed."
    } || {
      wget -nc https://download-cf.jetbrains.com/idea/ideaIC-2020.3.1.tar.gz
      tar xf ideaIC-2020.3.1.tar.gz -C ~/Public/
      ~/Public/idea-IC-203.6682.168/bin/idea.sh
    }
done

cp autostart/* ~/.config/autostart/
