# gitカスタマイズ

## 使い方

1. 好きな場所にclone
2. このディレクトリへのパスを`$CUSTOM_SCRIPT_PATH`という変数名でbash_profileに書く
3. .bashrcでsetting.bashを呼ぶ `. $go_to_this_dir_path/setting.bash`

## ディレクトリ構成
- common 共通の呼び出し処理を書く
- common_script 共通で使いたいスクリプトを書く
- custom 各PCごとに設定したい項目を書く
- outsource_library 外部から入手した設定ファイルを置く
