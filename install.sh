cd
mkdir opt
cd ~/opt
git clone https://github.com/Yawning/obfs4.git
git config --global init.defaultBranch main
git config --global user.email vnmdcvpfug@gmail.com
git config --global user.name vnmdcvpfug
cd ~/opt/obfs4
sudo pacman -S go
go build -o obfs4proxy/obfs4proxy ./obfs4proxy
sudo pacman -Rns go
cd ~/dotfiles
ln -s ~/dotfiles/hypr ~/.config/hypr
ln -s ~/dotfiles/kitty ~/.config/kitty
sudo pacman -S brightnessctl chromium hyprland kitty spotify-launcher tor torsocks ttf-ibm-plex vlc
sudo cp -r ~/dotfiles/torrc /etc/tor/
sudo systemctl enable --now tor
ln -s ~/dotfiles/.bashrc ~/.bashrc
source ~/.bashrc
h
