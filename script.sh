echo 'Atualizando...';
sudo apt-get update;
sudo apt-get upgrade;
clear;

echo 'Instalando curl...';
sudo apt install -y curl wget
clear;

echo 'Instalando snap...';
sudo apt install snapd
clear;

echo 'Instalando sublime-text...';
sudo snap install sublime-text --classic
clear;

echo 'Instalando chrome...';
sudo apt-get install -y libxss1 libappindicator1 libindicator7;
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb;
sudo dpkg -i google-chrome*.deb;
rm google-chrome*.deb;
clear;

echo 'Instalando spotify...';
sudo snap install spotify
clear;

echo 'Instalando ruby...';
sudo apt install ruby-full;
clear;

echo 'Instalando docker...';
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common;
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -;
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable";
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose
sudo groupadd docker;
sudo usermod -aG docker $USER;
clear;

echo 'Instalando franz...';
wget https://github.com/meetfranz/franz/releases/download/v5.0.0/franz_5.0.0_amd64.deb -O franz.deb;
sudo dpkg -i franz.deb;
sudo apt-get install -f;
sudo apt install ./franz.deb;
rm franz.deb
clear;

echo 'Instalando VSCode...';
sudo snap install code --classic
clear;

echo 'Instalando Node...';
sudo snap install node --channel=10/stable --classic
clear;

echo 'Instalando rubymine...';
sudo snap install rubymine --classic
clear;

echo 'Instalando clion...';
sudo snap install clion --classic
clear;

echo 'Instalando slack...';
sudo snap install slack --classic
clear;

echo 'Instalando vlc...';
sudo snap install vlc
clear;

echo 'Instalando yarn...';
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -;
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list;
sudo apt-get install yarn;
clear;

echo 'Instalando postman...';
sudo snap install postman;
clear;

echo 'Instalando netbeans...';
sudo snap install netbeans --classic
clear;

echo 'Instalando postgresql...';
sudo snap install postgresql
clear;

echo 'Instalando popcorntime...';
sudo rm -Rf /opt/popcorntime
sudo rm -Rf /usr/bin/Popcorn-Time
sudo rm -Rf /usr/share/applications/popcorntime.desktop
wget https://get.popcorntime.sh/build/Popcorn-Time-0.3.10-Linux-64.tar.xz -O popcorntime.tar.xz
sudo mkdir /opt/popcorntime
sudo tar Jxf popcorntime.tar.xz -C /opt/popcorntime/
sudo ln -sf /opt/popcorntime/Popcorn-Time /usr/bin/Popcorn-Time
echo -e '[Desktop Entry]\n Version=1.0\n Name=popcorntime\n Exec=/opt/popcorntime/Popcorn-Time\n Icon=/opt/popcorntime/src/app/images/icon.png\n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/popcorntime.desktop
sudo chmod +x /usr/share/applications/popcorntime.desktop

echo 'Instalando qBittorrent...';
sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable
sudo apt install qbittorrent

echo 'Instalando Pomodoro';
sudo apt-get install gnome-shell-pomodoro

echo 'Instalando Steam';
sudo apt install steam-installer

echo 'Instalando HyperJS';
wget https://releases.hyper.is/download/deb
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /opt/Hyper/hyper 50

echo 'Atualizando...';
sudo apt-get autoremove;
sudo apt-get update;
sudo apt-get upgrade;
clear;