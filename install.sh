sudo cp -r ~/dotfiles/sudoers /etc/sudoers
sudo cp -r ~/dotfiles/nanorc /etc/nanorc
sudo cp -r ~/dotfiles/setbrightness /usr/bin/setbrightness
cd
mkdir opt
cd ~/opt
git clone https://github.com/torproject/torbrowser-launcher.git
git clone https://github.com/Yawning/obfs4.git
git config --global init.defaultBranch main
git config --global user.email vnmdcvpfug@gmail.com
git config --global user.name vnmdcvpfug
cd ~/opt/obfs4
sudo pacman -S go
go build -o obfs4proxy/obfs4proxy ./obfs4proxy
sudo pacman -Rns go
sudo rm -rf ~/go
sudo cp -r ./obfs4proxy/obfs4proxy /usr/bin/
cd ~/dotfiles
ln -s ~/dotfiles/hypr ~/.config/hypr
ln -s ~/dotfiles/kitty ~/.config/kitty
sudo pacman -S chromium hyprland kitty nano noto-fonts noto-fonts-cjk noto-fonts-emoji tor torsocks
sudo cp -r ~/dotfiles/torrc /etc/tor/
sudo systemctl enable --now tor
rm -v ~/.bashrc
ln -s ~/dotfiles/.bashrc ~/.bashrc
hyprland