# FreeBSD 14.2 の設定ファイル

FreeBSD 14.2 インストール&設定メモ 2024-12-08 第8版 に対応
https://moginwc.sakura.ne.jp/FreeBSD142InstallGuide.pdf

インストールをお急ぎの方は、下記を実行してください。

ステップ１．FreeBSD 14.2 インストール&設定メモ 2024-12-08 第8版 の 18〜60P（sudoをインストールする）までを実行する。
ステップ２．# pkg install -y git を実行する。
ステップ３，# exit でログアウトする。
ステップ４．pcuser でログインする。
ステップ５．% git clone https://github.com/moginwc/freebsd142 を実行する。
ステップ６．% cd freebsd142
ステップ７．% tcsh ./install.tcsh
ステップ８．% sudo shutdown -r now
ステップ９．133ページ以降を参照。

--------

※上記内容は、下記のページの説明を自動化しています。
・51〜132P
・5-4.ログインした際のメッセージを、Last login以外、表示させない
・5-5.起動時のブートメニューやメッセージをできるだけ表示させない
・7-3.Windowsやmacとファイル共有したい(smb)
・8-6.chromium(ウェブブラウザ)を使用したい
・9-5.Windowsのように、ALT-F4キーで、プログラムを終了させたい

※また、下記のページの説明に一部コメントアウトなどで対応しています。
・5-2.ログイン後、自動的にウィンドウマネージャーを起動したい
・7-6.SJIS表示の機器類にtelnetでログインしたい
・9-1.デスクトップに、プログラムなどを起動するランチャーを表示させたい
・9-2.ランチャーのアイコンに、システムの負荷グラフやバッテリーの状態を表示させたい
・9-4.キーボード上のボリュームキーにて音量調節をしたい
・9-10.クリップボードの不具合を解決したい

[EOF]
