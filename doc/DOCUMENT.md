# DOCUMENT

開発の手引きです．

## Module

* `module` ディレクトリに格納するスクリプトでは，関数（コマンド）を一つ定義します
* 各関数は，純粋な関数になるようにします．そうした方がテストしやすくなります．
* `File.ps1` という関数定義ファイルに対して，`File.Tests.ps1` というファイル名で Pester によるテストコードを作成します．