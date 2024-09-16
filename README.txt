# FreeBSD 14.1 の設定ファイル

FreeBSD 14.1 インストール&設定メモ 2024-08-20 第7版 に対応
https://moginwc.sakura.ne.jp/FreeBSD141InstallGuide.pdf

インストールをお急ぎの方は、下記を実行してください。

ステップ１．FreeBSD 14.1 インストール&設定メモ 2024-08-20 第7版 の 11〜53Pを実行する。
ステップ２．# pkg install -y git を実行する。
ステップ３，# exit でログアウトする。
ステップ４．pcuser でログインする。
ステップ５．% git clone https://github.com/moginwc/freebsd141 を実行する。
ステップ６．% cd freebsd141
ステップ７．% chmod +x install.tcsh
ステップ８．% ./install.tcsh
ステップ９．インテル内蔵GPUの場合は下記のコマンドを実行する。
           sudo echo 'kld_list="i915kms.ko"' | sudo tee -a /etc/rc.conf
ステップ１０．% sudo shutdown -r now
ステップ１１．121ページ以降を参照。

--------

※上記内容は、下記のページの説明を自動化しています。
・54〜120P
・136P ログインした際のメッセージを、Last login以外、表示させない
・143P 省エネ動作させたい
・150〜151P Windowsやmacとファイル共有したい(smb)
・155P （ファイルのみ用意）
・164P chromium(ウェブブラウザ)を使用したい
・169P firefoxのアイコンをコピーする
・175P Windowsのように、ALT-F4キーで、プログラムを終了させたい

※また、下記のページの説明に一部コメントアウトなどで対応しています。
・134P ログイン後、自動的にウィンドウマネージャーを起動したい
・168〜169P デスクトップに、プログラムなどを起動するランチャーを表示させたい
・170〜171P ランチャーのアイコンに、システムの負荷グラフやバッテリーの状態を表示させたい
・174P キーボード上のボリュームキーにて音量調節をしたい

[EOF]
