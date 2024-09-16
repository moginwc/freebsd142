#!/bin/tcsh

sudo service ntpd enable
sudo cp ./etc_ntp_conf /etc/ntp.conf

sudo pkg install -y drm-kmod
# sudo echo 'kld_list="i915kms.ko"' | sudo tee -a /etc/rc.conf
sudo pw groupmod video -m pcuser

sudo pkg install -y vim
cp ./.vimrc ~

cp ./.cshrc ~
cp ./.login ~

sudo pkg install -y xorg

sudo pkg install -y fvwm
mkdir ~/icons
cp /usr/local/share/fvwm/pixmaps/programs.xpm ~/icons
cp /usr/local/share/fvwm/pixmaps/xterm-sol.xpm ~/icons
sudo pkg install -y ImageMagick7
magick ~/icons/programs.xpm ~/icons/programs.png
magick ~/icons/xterm-sol.xpm ~/icons/xterm-sol.png
sudo pkg install -y fvwm3
sudo pkg install -y ja-font-ipa

cp ./.xinitrc ~
cp ./.fvwm2rc ~

sudo pkg install -y mlterm
mkdir ~/.mlterm
cp -r ./.mlterm ~

sudo pkg install -y ja-uim-anthy uim-gtk3 uim-qt5
cp -r ./.xkb ~

cp -r ./.uim.d ~

sudo pkg install -y firefox
sudo pkg install -y scrot
sudo pkg install -y xlockmore
sudo pkg install -y lupe
sudo pkg install -y xpad3

sudo pkg update -f
sudo pkg upgrade

mkdir ~/.anthy
touch ~/.anthy/private_words_default

sudo mv /etc/motd.template /etc/motd.template.old
sudo touch /etc/motd.template

sudo service powerd enable

sudo pkg install -y chromium

cp /usr/local/lib/firefox/browser/chrome/icons/default/default48.png ~/icons/firefox.png
sudo pkg install -y xload
sudo pkg install -y xbatt

sudo pkg install -y samba416
sudo service samba_server enable
mkdir ~/share
sudo cp etc_smb4.conf /usr/local/etc/smb4.conf
sudo pdbedit -a -u pcuser
