/*Repository:https://github.com/su-pull/juster */
#UseHook

InstallKeybdHook
SendSuppressedKeyUp(key) {
    DllCall("keybd_event"
        , "char", GetKeyVK(key)
        , "char", GetKeySC(key)
        , "uint", KEYEVENTF_KEYUP := 0x2
        , "uptr", KEY_BLOCK_THIS := 0xFFC3D450)
}

;; Swap CapsLock to LCtrl in a way compatible with IME.
*CapsLock::
{
    SendSuppressedKeyUp "LCtrl"
    Send "{Blind}{LCtrl DownR}"
}
*CapsLock up::
{
    Send "{Blind}{LCtrl Up}"
}
*LCtrl:: {
    Send "{Blind}!{CapsLock}"
    SendSuppressedKeyUp "CapsLock"
}

;; Un focused tab.
*~LAlt:: Send "{Blind}{vk07}"
*~RAlt:: Send "{Blind}{vk07}"

;; Reset default shortcut keys.
!VKC0:: ("")
^w:: ("")
#m:: Send("")
^s:: Send("")
^z:: Send("")
^x:: Send("")
^v:: Send("")
^i:: Send("")
^o:: Send("")
^+l:: Send("")
^#d:: Send("")
^+n:: Send("")
^#F4:: Send("")
^+p:: Send("")
^LButton:: Send("")
^WheelUp:: Send("")
^WheelDown:: Send("")
^=:: Send("")
^-:: Send("")
^+t:: Send("")
;
; is empty

CapsLock & Space:: Send "!{VKC0}" ; IMEトグル
;
; Ctrl + Space

CapsLock & b:: Send "{Left}" ; ← カーソル左
;
; Ctrl + b

CapsLock & f:: Send "{Right}" ; → カーソル右
;
; Ctrl + f

CapsLock & p:: Send "{Up}" ; ↑ カーソル上行
;
; Ctrl + p

CapsLock & n:: Send "{Down}" ; ↓ カーソル下行
;
; Ctrl + n

CapsLock & a:: Send "{Home}" ; カーソル行頭
;
; Ctrl + a

CapsLock & e:: Send "{End}" ; カーソル行末
;
; Ctrl + e

#Left:: Send "^{Left}" ; カーソル単語後方
;
; Alt + ←

#Right:: Send "^{Right}" ; カーソル単語前方
;
; Alt + →

!Left:: Send "{Home}" ; カーソル行頭
;
; Win + ←

!Right:: Send "{End}" ; カーソル行末
;
; Win + →

!+Left:: Send "+{Home}" ; 後方行選択
;
; Shift + Alt + ←

!+Right:: Send "+{End}" ; 前方行選択
;
; Shift + Alt + →

#+Left:: Send "^+{Left}" ; 後方単語選択
;
; Shift + Win + ←

#+Right:: Send "^+{Right}" ; 前方単語選択
;
; Shift + Win + →

CapsLock & d:: Send "{Delete}" ; 前方文字削除
;
; Ctrl + d

CapsLock & h:: Send "{BS}" ; 後方文字削除
;
; Ctrl + h

CapsLock & k:: Send "^{i}" ; カタカナに変換
;
; Ctrl + i

!r:: Send "^{r}" ; 再読み込み
;
; Alt + r

CapsLock & `;:: Send "^{o}" ; 半角カタカナに変換
;
; Ctrl + o

!+2:: Send "!{PrintScreen}" ; ウィンドウのスクリーンショットをクリップボードへ保存
;
; Alt + Shift + 2

!+3:: Send ("+{PrintScreen}") ; 画面のスクリーンショットをクリップボードへ保存
;
; Alt + Shift + 3

!+4:: Send "{PrintScreen}" ; 切り抜いてキャプチャーを起動
;
; Alt + Shift + 4

!z:: Send "^{z}" ; 戻す
;
; Alt + z

!+z:: Send "^{y}" ; 進める
;
; Alt + Shift + z

!x:: Send "^{x}" ; 切り取り
;
; Alt + x

!c:: Send "^{c}" ; コピー
;
; Alt + c

!v:: Send "^{v}" ; 貼り付け
;
; Alt + v

!a:: Send "^{a}" ; 全体選択
;
; Alt + a

!f:: Send "^{f}" ; 検索
;
; Alt + f

!s:: Send "^{s}" ; 保存
;
; Alt + s

!+s:: Send "^+{s}" ; 名前を付けて保存
;
; Alt + Shift + s

!+n:: Send "^+{n}" ; 新規フォルダ
;
; Alt + Shift + n

!o:: Send "^{Enter}" ; 開く
;
; Alt + o

!LButton:: Send "^{LButton}" ; リンクを新しいタブで開く
;
; Alt + Left Click

CapsLock & Enter:: Send "{F2}" ; 名前を変更
;
; Ctrl + Enter

!w:: Send "^{w}" ; タブを 閉じる
;
; Alt + w

!q:: Send "!{F4}" ; 強制終了
;
; Alt + q

!vkBB:: Send "^{vkBB}" ; テキストサイズスケール拡大
;
; Alt + ;(+JIS)

!=:: Send "^{=}" ; テキストサイズスケール拡大
;
; Alt + =(+ANSI)

!m:: Send "#{Down}" ; ウィンドウ最小化
;
; Alt + m

!h:: Send "#{d}" ; ウィンドウを全て最小化
;
; Alt + h

CapsLock & Up:: Send "#{Up}" ; ウィンドウ上方変形,移動
;
; Ctrl + ↑

CapsLock & Down:: Send "#{Down}" ; ウィンドウ下方変形,移動
;
; Ctrl + ↓

CapsLock & Left:: Send "#{Left}" ; ウィンドウ左方変形,移動
;
; Ctrl + ←

CapsLock & Right:: Send "#{Right}" ; ウィンドウ右方変形,移動
;
; Ctrl + →

#Up:: {
    Send "{Up}{Home}" ; 行先頭→行を上がる
}
;
; Win + ↑


#Down:: {
    Send "{Down}{End}" ; 行末→行を下がる
}
;
; Win + ↓

!Up:: Send "^{Home}" ; 一番上
;
; Alt + ↑

!Down:: Send "^{End}" ; 一番下
;
; Alt + ↓

;#^ ; 左の仮想デスクトップ
;
; win + Ctrl + ←

;#^ ; 右の仮想デスクトップ
;
; win + Ctrl + →

#d:: Send "^#{d}" ; 新しい仮想デスクトップ
;
; Win + d

#q:: Send "^#{F4}" ; 仮想デスクトップを閉じる
;
; Win + q

!+t:: Send "^+{t}" ; タブを復元
;
;  alt + shift + t

;; Visual Studio Code only.
#HotIf WinActive("ahk_exe Code.exe")

#Up:: Send "!{Up}" ; 選択範囲入れ替え
;
; Win + ↑

#Down:: Send "!{Down}" ; 選択範囲入れ替え
;
; Win + ↓

#+Up:: Send "!+{Up}" ; 選択範囲を上にコピー
;
; Win + Shift + ↑

#+Down:: Send "!+{Down}" ; 選択範囲を下にコピー
;
; Win + Shift + ↓

!d:: Send "^{d}" ; 単語一括選択
;
; Alt + d

!+l:: Send "^+{l}" ; 一致全選択
;
; Alt + Shift + L

!/:: Send "^{/}" ; コメントアウト
;
; Alt + /

!+p:: Send "^+{p}" ; コマンドパレット
;
; Alt + p

#HotIf

;; Visual Studio Code and CMD stop program command.
#HotIf WinActive("ahk_exe Code.exe") or WinActive("ahk_class CASCADIA_HOSTING_WINDOW_CLASS")

CapsLock & c:: Send "^{c}"
;
; ctrl + c

#HotIf