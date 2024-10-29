#!/bin/tcsh

# システム起動時に ntpd が起動するよう設定する
sudo service ntpd enable
sudo cp ./etc_ntp_conf /etc/ntp.conf

# 省エネ動作の設定を行う
sudo service powerd enable

# グラフィックドライバーのインストール
sudo pkg install -y drm-kmod
## sudo echo 'kld_list="i915kms.ko"' | sudo tee -a /etc/rc.conf
sudo pw groupmod video -m pcuser

# vimエディターをインストールする
sudo pkg install -y vim
cp ./.vimrc ~

# シェルスクリプト初期設定
cp ./.cshrc ~
cp ./.login ~

# X-Window System をインストールする
sudo pkg install -y xorg

# ウィンドウシステムをインストールする
sudo pkg install -y fvwm
mkdir ~/icons
cp /usr/local/share/fvwm/pixmaps/programs.xpm ~/icons
cp /usr/local/share/fvwm/pixmaps/xterm-sol.xpm ~/icons
sudo pkg install -y ImageMagick7
magick ~/icons/programs.xpm -trim +repage -scale 200% ~/icons/programs.png
magick ~/icons/xterm-sol.xpm ~/icons/xterm-sol.png
sudo pkg install -y fvwm3
sudo pkg install -y ja-font-ipa

# ウィンドウシステムの初期設定
cp ./.xinitrc ~
cp ./.fvwm2rc ~

# 端末エミュレータのインストールと設定
sudo pkg install -y mlterm
cp -r ./.mlterm ~

# 入力メソッド・日本語入力システムのインストールと設定
sudo pkg install -y ja-uim-anthy uim-gtk uim-gtk3 uim-qt5
cp -r ./.xkb ~

# 入力メソッド・日本語入力システムの初期設定
cp -r ./.uim.d-anthy ~
mv ~/.uim.d-anthy ~/.uim.d

# ユーザー辞書ファイルの作成
mkdir ~/.anthy
## touch ~/.anthy/private_words_default
cp -r ./.anthy ~

# アプリのインストール
sudo pkg install -y firefox
sudo pkg install -y scrot
sudo pkg install -y xlockmore
sudo pkg install -y lupe
sudo pkg install -y xpad3

# xpadの初期設定
cp -r ./.config ~

# パッケージのアップデート
sudo pkg update -f
sudo pkg upgrade

# 5-4.ログインした際のメッセージを、Last login以外、表示させない
sudo mv /etc/motd.template /etc/motd.template.old
sudo touch /etc/motd.template

# 8-6.chromium（ウェブブラウザ）を使用したい
sudo pkg install -y chromium webfonts

# 9-1. 9-2.
cp /usr/local/lib/firefox/browser/chrome/icons/default/default48.png ~/icons/firefox.png
cp /usr/local/share/icons/hicolor/48x48/apps/chrome.png ~/icons/chrome.png
sudo pkg install -y xload
sudo pkg install -y xbatt

# conky設定
pkg install -y conky
cp ./.conkyrc ~

# 文字コード表
cp -r ./html ~

# 7-3. Windowsやmacとファイル共有したい（smb）
sudo pkg install -y samba419
sudo service samba_server enable
mkdir ~/share
sudo cp etc_smb4.conf /usr/local/etc/smb4.conf
sudo pdbedit -a -u pcuser
