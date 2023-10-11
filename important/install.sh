mkdir -p ~/{doc,dl,img,music,vid}
mkdir -p ~/.cache/{email}
mkdir -p ~/external/{bigbig,usb1,z_usb}
mkdir -p ~/progs/useless/{Desktop,Public,Templates}
mkdir -p ~/.cache/{python,send_to_remarkable}
touch ~/.cache/python/python_history

mkdir ~/progs/aur
git clone https://aur.archlinux.org/dragon-drag-and-drop.git ~/progs/aur/dragon
git clone https://aur.archlinux.org/jdownloader2.git ~/progs/aur/jdownloader2
git clone https://aur.archlinux.org/libxft-bgra.git ~/progs/aur/libxft-bgra_dmenu
git clone https://aur.archlinux.org/libzkgroup.git ~/progs/aur/libzkgroup_signal 
git clone https://aur.archlinux.org/nordvpn-bin.git ~/progs/aur/nordvpn
git clone https://aur.archlinux.org/signal-cli.git ~/progs/aur/signal
git clone https://aur.archlinux.org/skypeforlinux-stable-bin.git ~/progs/aur/skypeforlinux

git clone git@gitlab.com:chekmanh/config.git ~/.config
mkdir -p ~/.config/zsh/extras/plugins/
git clone https://github.com/softmoth/zsh-vim-mode.git ~/.config/zsh/extras/plugins/vim
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.config/zsh/extras/plugins/suggest

git clone git@gitlab.com:chekmanh/dmenu_chelz.git ~/progs/dmenu
git clone git@gitlab.com:chekmanh/dwm_chelz.git ~/progs/dwm_chelz
git clone git@gitlab.com:chekmanh/st_chelz.git ~/progs/st_chelz
git clone git@gitlab.com:chekmanh/private_documents.git ~/doc/code
git clone git@gitlab.com:chekmanh/local.git ~/.local

ln -sf /home/chelz/.config/bash/bashrc /home/chelz/.bashrc
ln -sf /home/chelz/.config/bash/profile /home/chelz/.zprofile

# make touchpad usable
sudo ln -s /home/chelz/.config/important/30-touchpad.conf /etc/X11/xorg.conf.d/30-touchpad.conf

mkdir /root/.config/vim/swpundo
sudo ln -sf /home/chelz/.config/vim/rest/sudovimrc /root/.vimrc
sudo ln -sf /home/chelz/.config/vifm /root/.config/vifm
sudo ln -sf /home/chelz/.config/bash/sudo_rc /root/.bashrc

#sudo ln -s /home/chelz/.config/important/blacklist /etc/modprobe.d/blacklist
