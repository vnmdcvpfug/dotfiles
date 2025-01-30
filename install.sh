sudo cp -r ~/dotfiles/sudoers /etc/sudoers
sudo cp -r ~/dotfiles/05_proxy /etc/sudoers.d/05_proxy
sudo cp -r ~/dotfiles/environment /etc/environment
sudo cp -r ~/dotfiles/brightnessctl /usr/bin/brightnessctl
sudo cp -r ~/dotfiles/batteryctl.service /etc/systemd/system/batteryctl.service
sudo systemctl enable --now batteryctl.service
cp -r ~/dotfiles/blender ~/blender
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
ln -s ~/dotfiles/nvim ~/.config/nvim
ln -s ~/dotfiles/ranger ~/.config/ranger
ln -s ~/dotfiles/zathura ~/.config/zathura
sudo pacman -S chromium hyprland hyprpaper kitty noto-fonts noto-fonts-cjk noto-fonts-emoji nvim python-pillow ranger tor torsocks wl-clipboard xdg-desktop-portal-hyprland zathura zathura-pdf-mupdf
sudo cp -r ~/dotfiles/torrc /etc/tor/
sudo systemctl enable --now tor
sudo cp -r ~/dotfiles/iptables.rules /etc/iptables/iptables.rules
sudo rm /etc/iptables/ip6tables.rules
sudo ln -s /etc/iptables/iptables.rules /etc/iptables/ip6tables.rules
sudo systemctl enable --now iptables
sudo systemctl enable --now ip6tables
rm ~/.bashrc
ln -s ~/dotfiles/.bashrc ~/.bashrc
cd
hyprland
