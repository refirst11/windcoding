 [README in English](https://github.com/su-pull/macintosh-ahk/blob/main/README-en.md)

## macintosh-ahk
 [![OS - Windows](https://img.shields.io/badge/OS-Windows-blue?logo=windows&logoColor=white)](https://www.microsoft.com/ "Go to Microsoft homepage") [![exe - AutoHotkey](https://img.shields.io/badge/exe-AutoHotkey-2ea44f)](https://www.autohotkey.com/ "Go to AutoHotkey")  
![gif](https://user-images.githubusercontent.com/75829584/213149046-0ca524f6-a918-4aa8-ae1c-2076f6129b35.gif)
Windows 開発者と執筆者の効率を向上させるために作成されました。  
または、Mac を試してみたい場合は、ぴったりです。  
MacのCommandとWinのAltを入れ替えて、CtrlでUnix流のカーソル移動が可能。  
IDEとcmdでのみCtrl + Cを許容しています(各自追加して使用してください)  

## システム要件
AutoHotkeyがインストールされたWindows(推奨11)で起動します。  
CapsLockをCtrlキーと入れ替えることを推奨します。

こちら[macintosh-ahk ver0.0.0α](https://github.com/su-pull/macintosh-ahk/archive/refs/heads/main.zip)よりZipをダウンロードして解凍し起動します。  
終了はタスクトレイの右クリックよりExitで終了できます。

## IME変換
US配列の場合Alt _ `の変換は Ctrl + Spaceに置き換えられますが切り替えの通知が画面中央に表示されてしまうのでオフにします。  
言語バーよりIMEモード切替の通知の画面中央に表示するのチェックを外す。  
この設定は日本語配列の半角/全角はそのまま残しているため日本語配列の場合は不要です。

### ANSI
US配列で英語と日本語を併用する人向けに[alt-ime-ahk](https://github.com/karakaram/alt-ime-ahk)と併用することができます。

### JIS
日本語配列の場合設定→時刻と言語→言語と地域→日本語(・・・言語のオプション)→Microsoft IME(・・・キーボードオプション)→全般→以前のバージョンの Microsoft IMEを使うをオフ
Microsoft IME→キーとタッチのカスタマイズからキーの割り当てで無変換にIME-オフ、変換にIME-オンを割り当てる。

## 使用法
| 入力 | 出力 |
| ------------- | ------------- |
| Ctrl + Space | IME オンオフ |
| Ctrl + b | ← カーソル戻る |
| Ctrl + f | → カーソルを進める|
| Ctrl + p | ↑ カーソル上行 |
| Ctrl + n | ↓ カーソル下行 |
| Ctrl + a | カーソル行頭 |
| Ctrl + e | カーソル行末 |
| Alt + ←  | カーソル行頭 |
| Alt + →  | カーソル行末 |
| Win + ←  | カーソル単語後方 |
| Win + →  | カーソル単語前方 |
| Shift + Alt + ← | 後方選択 |
| Shift + Alt + → | 前方選択 |
| Shift + Win + ← | 後方単語選択 |
| Shift + Win + → | 前方単語選択 |
| Ctrl + d | 前方文字を削除 |
| Ctrl + h | 後方文字を削除 |
| Ctrl + k | カタカナに変換 |
| Ctrl + ; | 半角カタカナに変換 |
| Alt + z | 元に戻す |
| Alt + Shift + z | やり直し |
| Alt + x | カット |
| Alt + c | コピー |
| Alt + v | 貼り付け |
| Alt + a | すべて選択 |
| Alt + f | 検索 |
| Alt + s | 保存 |
| Alt + Shift + s | 名前を付けて保存 |
| Alt + Shift + n | 新規フォルダー |
| Alt + o | 開く |
| Alt + Left Click | 新しいタブでリンクを開く / 複数選択 |
| Ctrl + Enter | 名前を変更 |
| Alt + w | タブ ウィンドウを閉じる |
| Alt + q | アプリケーションを閉じる |
| Alt + m | ウィンドウを最小化 |
| Alt + h | ウィンドウを全て最小化 |
| Ctrl + ↑ | ウィンドウを上へ変形,移動 |
| Ctrl + ↓ | ウィンドウを下へ変形,移動 |
| Ctrl + ← | ウィンドウを左へ変形,移動 |
| Ctrl + → | ウィンドウを右へ変形,移動 |
| Win + ↑ | スクロール & カーソル 上に移動 |
| Win + ↓ | スクロール & カーソル 下に移動 |
| Alt + ↑ | スクロール & カーソル トップに移動 |
| Alt + ↓ | スクロール & カーソル ボトムに移動 |
| win + Ctrl + ← | 左の仮想デスクトップを表示 |
| win + Ctrl + → | 右の仮想デスクトップを表示 |
| Win + d | 新しい仮想デスクトップ |
| Win + q | 仮想デスクトップを閉じる |

## Visual Studio Code
| 入力 | 出力 |
| ------------- | ------------- |
| Alt + Shift + p | コマンドパレット |
| Alt + Shift + l | 一致文字選択 |
| Alt + d | 単語の選択 |
| Alt + / | コメントアウト |
| Ctrl + c | プログラムを停止 |

## cmd
| 入力 | 出力 |
| ------------- | ------------- |
| Ctrl + c | プログラムを停止 |

## ブログ
[AHKでMacintoshのキーバインドが使えるスクリプトを作った](https://sou-web.net/docs/url/2023-01-14)
