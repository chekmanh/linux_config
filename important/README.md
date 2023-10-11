vim /etc/systemd/logind.conf:
  HandlePowerKey=ignore
  HandleLidSwitch=susoend-then-hibernate

#hibernate
vim /etc/mkinitcpio.conf
  HOOKS=(... resume fsck)
vim /etc/systemd/sleep.conf
  AllowNessacary
  HibernateDelaySec=120min
  
vim /etc/pacman.d/mirrorlist  #sort accordingly

vim /etc/pacman.conf
  #UseSyslog
  Color
  #TotalDownload
  CheckSpace
  #VerbosePkgLists
  ILoveCandy

vim /etc/makepkg.conf;
  MAKEFLAGS="-j$(nproc)"
