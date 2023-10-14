[windcoding README](https://github.com/su-pull/windcoding/blob/main/README.md)

# wincoding_JIS

[![OS - Windows](https://img.shields.io/badge/OS-Windows-lightblue?logo=windows&logoColor=white)](https://www.microsoft.com/ "Go to Microsoft homepage") [![exe - AutoHotkey](https://img.shields.io/badge/exe-AutoHotkey-lightblue)](https://www.autohotkey.com/ "Go to AutoHotkey")
[![Release Status](https://img.shields.io/github/release/su-pull/windcoding?color=lightblue)](https://github.com/su-pull/windcoding/releases/latest)
[![License: MIT](https://img.shields.io/badge/License-MIT-lightblue)](https://opensource.org/licenses/MIT)

これにより Windows の開発効率が向上します。  
Mac を試してみたい場合はこれを使用できます。  
またこれは、MacOS ショートカットのドキュメントであることを目的としています。  
Unix のように CapsLock の位置を Control に設定できます。その場合は、スワップを選択して開始します。

\*仮想デスクトップなどの Win キーを使うコマンドは Windows デフォルトの動作のままです(Mac Option キーとしても使えます)。

## 設定

日本語配列の場合 無変換で英語入力モード、変換でかなモードに切り替える設定があります。

設定 → 時刻と言語 → 言語と地域 → 日本語(・・・言語のオプション)→Microsoft IME(・・・キーボードオプション)→ 全般 → 以前のバージョンの Microsoft IME を使うをオフ
Microsoft IME→ キーとタッチのカスタマイズからキーの割り当てで無変換に IME-オフ、変換に IME-オンを割り当てる。

## 説明書

| 入力             | 出力                                                 |
| ---------------- | ---------------------------------------------------- |
| Ctrl + Space     | IME オンオフ                                         |
| Ctrl + p         | ↑ カーソル上行                                       |
| Ctrl + n         | ↓ カーソル下行                                       |
| Ctrl + b         | ← カーソルを戻る                                     |
| Ctrl + f         | → カーソルを進める                                   |
| Ctrl + a         | カーソル行頭                                         |
| Ctrl + e         | カーソル行末                                         |
| Alt + ↑          | トップにスクロール                                   |
| Alt + ↓          | ボトムにスクロール                                   |
| Alt + ←          | カーソル行頭                                         |
| Alt + →          | カーソル行末                                         |
| Win + ↑          | カーソル行頭 → カーソル上行                          |
| Win + ↓          | カーソル行末 → カーソル下行                          |
| Win + ←          | カーソル単語後方                                     |
| Win + →          | カーソル単語前方                                     |
| Shift + Alt + ←  | 後方選択                                             |
| Shift + Alt + →  | 前方選択                                             |
| Shift + Win + ←  | 後方単語選択                                         |
| Shift + Win + →  | 前方単語選択                                         |
| Ctrl + d         | 前方文字を削除                                       |
| Ctrl + h         | 後方文字を削除                                       |
| Ctrl + k         | カタカナに変換                                       |
| Ctrl + ;         | 半角カタカナに変換                                   |
| Ctrl + Enter     | 名前を変更                                           |
| Alt + r          | リロード                                             |
| Alt + z          | 元に戻す                                             |
| Alt + Shift + z  | やり直し                                             |
| Alt + x          | カット                                               |
| Alt + c          | コピー                                               |
| Alt + v          | 貼り付け                                             |
| Alt + a          | すべて選択                                           |
| Alt + f          | 検索                                                 |
| Alt + Shift + 2  | ウィンドウのスクリーンショットをクリップボードへ保存 |
| Alt + Shift + 3  | 画面のスクリーンショットをクリップボードへ保存       |
| Alt + Shift + 4  | 切り抜いてキャプチャーを起動                         |
| Alt + s          | 保存                                                 |
| Alt + Shift + s  | 名前を付けて保存                                     |
| Alt + Shift + n  | 新規フォルダー                                       |
| Alt + o          | 開く                                                 |
| Alt + Left Click | 新しいタブでリンクを開く / 複数選択                  |
| Alt + w          | タブ ウィンドウを閉じる                              |
| Alt + q          | アプリケーションを閉じる                             |
| Alt + m          | ウィンドウを最小化                                   |
| Alt + h          | ウィンドウを全て最小化                               |

## ブラウザー

| Input           | Output     |
| --------------- | ---------- |
| Alt + shift + t | タブを復元 |

## Visual Studio Code

| 入力            | 出力                   |
| --------------- | ---------------------- |
| Win + ↑         | 選択範囲を上と入れ替え |
| Win + ↓         | 選択範囲を下と入れ替え |
| Win + Shift + ↑ | 選択範囲を上にコピー   |
| Win + Shift + ↓ | 選択範囲を下にコピー   |
| Alt + Shift + p | コマンドパレット       |
| Alt + Shift + l | 一致文字選択           |
| Alt + d         | 単語の選択             |
| Alt + /         | コメントアウト         |
| Ctrl + c        | プログラムを停止       |

## CMD

| 入力     | 出力             |
| -------- | ---------------- |
| Ctrl + c | プログラムを停止 |
