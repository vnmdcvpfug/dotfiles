cd
mkdir software
cd software
git clone https://aur.archlinux.org/yay.git
git config --global init.defaultBranch main
git config --global user.email vnmdcvpfug@gmail.com
git config --global user.name vnmdcvpfug
cd yay
makepkg -si
cd
git clone https://github.com/vnmdcvpfug/scripts.git
cd dotfiles
ln -s ~/dotfiles/.tmux.conf ~/
ln -s ~/dotfiles/.xinitrc ~/
ln -s ~/dotfiles/hypr ~/.config/hypr
ln -s ~/dotfiles/nvim ~/.config/nvim
ln -s ~/dotfiles/kitty ~/.config/kitty
sudo pacman -S tor torsocks kitty neovim hyprland hypridle hyprpaper hyprlock xorg nautilus brightnessctl tlp python-send2trash rofi-wayland bash-completion spotify-launcher noto-fonts noto-fonts-cjk noto-fonts-emoji ripgrep xsel loupe vlc grim slurp wl-clipboard luarocks
yay -S obfs4proxy
sudo cp -r ~/dotfiles/torrc /etc/tor/
sudo cp -r ~/dotfiles/tlp.conf /etc/
sudo systemctl enable tlp
sudo systemctl enable tor
sudo systemctl restart tor
ln -s ~/dotfiles/.bashrc ~/.bashrc
source ~/.bashrc
yay -S ungoogled-chromium-bin
h
