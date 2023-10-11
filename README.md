  ,- _~. ,,          ,,           /\\,/\\,             ,,  
 (' /|   ||          ||          /| || ||    _         ||  
((  ||   ||/\\  _-_  ||/\        || || ||   < \, \\/\\ ||/\\  
((  ||   || || || \\ ||_< <>-<>  ||=|= ||   /-|| || || || ||  
 ( / |   || || ||/   || |       ~|| || ||  (( || || || || ||  
  -____- \\ |/ \\,/  \\,\        |, \\,\\,  \/\\ \\ \\ \\ |/  
           _/                   _-                       _/  

## **HOW TO INSTALL ARCH LINUX**

md5sum testfile > testfile.md5  
md5sum -c testfile.md5  

## boot the usb with Archlinux

gdisk /dev/sdX  
* new default   default   size    type  
#  n   <cr>    <cr>    +200M   ef00   #boot  
 n   <cr>    <cr>    +30G    8304   #root  
 n   <cr>    <cr>    <cr>    8302   #home  
 w

# mkfs.fat -F 32 -n EFI /dev/sdX1  
mkfs.ext4 -L ROOT /dev/sdX2  
mkfs.ext4 -L HOME /dev/sdX3  
mkdir /mnt/boot  
mkdir /mnt/home  
mount /dev/sdX1 /mnt/boot  
mount /dev/sdX2 /mnt/  
mount /dev/sdX2 /mnt/home  

bootctl install  
vim /boot/loader/loader.conf  
* default       arch  
* editor        0  
* timeout       300    #wait before boot  

vim /boot/loader/entries/arch.conf  
* title         Arch Linux  
* linux         /vmlinuz-linux  
* initrd        /initramfs-linux.img  
* options       root=LABEL=ROOT rw  
# * options       resume=UUID=<UUID>  #later with hibernate

pacman -S networkmanager wpa_supplicant  
systemctl enable NetworkManager  


## After Install
useradd -m -g wheel chelz  
passwd chelz #whatever  
sudo vim /etc/sudoers  
* Defaults !tty_tickets

sudo vim /etc/makepkg.conf  
* MAKEPFLAGS="-j$(nproc)"

sudo vim /etc/pacman.conf  
* #UseSyslog
* Color
* ILoveCandy
* #TotalDownload
* CheckSpace
* #VerbosePkgLists

usermod -a -G audio video chelz  

pacman -S xorg xf86-video-intel
