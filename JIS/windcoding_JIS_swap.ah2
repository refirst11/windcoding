/*Repository:https://github.com/su-pull/wincoding/blob/main/README_JIS.md */
#UseHook

InstallKeybdHook
SendSuppressedKeyUp(key) {
	DllCall("keybd_event"
		, "char", GetKeyVK(key)
		, "char", GetKeySC(key)
		, "uint", KEYEVENTF_KEYUP := 0x2
		, "uptr", KEY_BLOCK_THIS := 0xFFC3D450)
}

; CapsCtrl.
*CapsLock::
{
	Send "{LCtrl DownR}"
	SendSuppressedKeyUp "LCtrl"
}
*CapsLock up::
{
	Send "{LCtrl Up}"
}

*LCtrl:: {
	Send "{Blind}{CapsLock}"
	SendSuppressedKeyUp "CapsLock"
}

;; not select tab.
*~LAlt:: Send "{vkE8}"
*~RAlt:: Send "{vkE8}"

; CapsLock of remap.
CapsLock & w:: Send ("")
CapsLock & r:: Send ("")
CapsLock & t:: Send ("")
CapsLock & y:: Send ("")
CapsLock & u:: Send ("")
CapsLock & i:: Send ("")
CapsLock & o:: Send ("")
CapsLock & [:: Send ("")
CapsLock & ]:: Send ("")
CapsLock & \:: Send ("")
CapsLock & s:: Send ("")
CapsLock & g:: Send ("")
CapsLock & j:: Send ("")
CapsLock & ':: Send ("")
CapsLock & z:: Send ("")
CapsLock & x:: Send ("")
CapsLock & c:: Send ("")
CapsLock & m:: Send ("")
CapsLock & ,:: Send ("")
CapsLock & .:: Send ("")
CapsLock & /:: Send ("")

; System Ctrl of remap.
^F1:: Send ("F1")
^F2:: Send ("F2")
^F3:: Send ("F3")
^F4:: Send ("F4")
^F5:: Send ("F5")
^F6:: Send ("F6")
^F7:: Send ("F7")
^F8:: Send ("F8")
^F9:: Send ("F9")
^F10:: Send ("F10")
^F11:: Send ("F11")
^F12:: Send ("F12")
^Esc:: Send ("Esc")
^1:: Send ("1")
^2:: Send ("2")
^3:: Send ("3")
^4:: Send ("4")
^5:: Send ("5")
^6:: Send ("6")
^7:: Send ("7")
^8:: Send ("8")
^9:: Send ("9")
^0:: Send ("0")
^a:: Send ("a")
^b:: Send ("b")
^c:: Send ("c") ; copy as Alt + c
^d:: Send ("d")
^e:: Send ("e")
^f:: Send ("f")
^g:: Send ("g")
^h:: Send ("h")
^i:: Send ("i") ; katakana as Ctrl + k
^j:: Send ("j")
^k:: Send ("k")
^l:: Send ("l")
^n:: Send ("n")
^m:: Send ("m")
^o:: Send ("o") ; open as Alt + o
^p:: Send ("p")
^q:: Send ("q")
^r:: Send ("r")
^s:: Send ("s") ; save as Alt + s
^t:: Send ("t")
^u:: Send ("u")
^v:: Send ("v") ; past as Alt + v
^w:: Send ("w") ; close as Alt + q
^x:: Send ("x") ; cut as Alt + x
^y:: Send ("y")
^z:: Send ("z") ; undo as Alt + z
^[:: Send ("[")
^]:: Send ("]")
^\:: Send ("\")
^;:: Send (";")
^':: Send ("'")
^,:: Send (",")
^.:: Send (".")
^Backspace:: Send("Backspace")
^Space:: Send("Space")
^Up:: Send("Up")
^Down:: Send("Down")
^ScrollLock:: Send ("ScrollLock")
^NumLock:: Send ("NumLock")
^Pause:: Send ("Pause")
^Insert:: Send ("Insert")
^Delete:: Send ("Delete")
^Home:: Send ("Home")
^End:: Send ("End")
^PgUp:: Send ("PgUp")
^PgDn:: Send ("PgDn")

;; Reset default shortcut keys.
#Capslock:: Send("")
!VKC0:: Send("")
^w:: Send("")
#m:: Send("")
^s:: Send("")
^z:: Send("")
^x:: Send("")
^c:: Send("")
^i:: Send("")
^o:: Send("")
^+l:: Send("")
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

CapsLock & b:: {
	if GetKeyState("Shift") {
		Send ("+{Left}")  ; ← Cursor back select.
	} else {
		Send "{Left}" ; ← Cursor back.
	}
}
;
; Ctrl + Shift + b & Ctrl + b

CapsLock & f:: {
	if GetKeyState("Shift") {
		Send ("+{Right}") ; → Cursor forward select.
	} else {
		Send "{Right}" ; → Cursor forward.
	}
}
;
; Ctrl + Shift + f & Ctrl + f

CapsLock & p:: {
	if GetKeyState("Shift") {
		Send ("+{Up}") ; ↑ Cursor up line select.
	} else {
		Send "{Up}" ; ↑ Cursor up line.
	}
}
;
; Ctrl + Shift + p & Ctrl + p

CapsLock & n:: {
	if GetKeyState("Shift") {
		Send ("+{Down}") ; ↑ Cursor down line select.
	} else {
		Send "{Down}" ; ↓ Cursor down line.
	}
}
;
; Ctrl + Shift + n & SCtrl + n

CapsLock & a:: {
	if GetKeyState("Shift") {
		Send ("+{Home}") ; → Start of line select.
	} else {
		Send "{Home}" ; Cursor start of line.
	}
}
;
; Ctrl + Shift + a & Ctrl + a

CapsLock & e:: {
	if GetKeyState("Shift") {
		Send ("+{End}") ; → End of line select.
	} else {
		Send "{End}" ; Cursor end of line.
	}
}
;
; Ctrl + Shift + e & Ctrl + e

CapsLock & Up:: Send "^{Up}"
CapsLock & Down:: Send "^{Down}"
CapsLock & PgUp:: Send "^{PgUp}"
CapsLock & PgDn:: Send "^{PgDn}"
;  スクロール
;  タブスクロール

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
; Ctrl + k

CapsLock & `;:: Send "^{o}" ; 半角カタカナに変換
;
; Ctrl + ;

!r:: Send "^{r}" ; 再読み込み
;
; Alt + r

!+2:: Send "!{PrintScreen}" ; ウィンドウのスクリーンショットをクリップボードへ保存
;
; Alt + Shift + 2

!+3:: Send ("+{PrintScreen}") ; 画面のスクリーンショットをクリップボードへ保存
;
; Alt + Shift + 3

!+4:: Send "{PrintScreen}" ; 切り抜いてキャプチャーを起動
;
; Alt + Shift + 4

!z:: Send "^{z}" ; 戻し
;
; Alt + z

!+z:: Send "^{y}" ; 進み
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

!-:: Send "^{-}" ; テキストサイズスケール縮小
;
; Alt + -

!vkBB:: Send "^{vkBB}" ; テキストサイズスケール拡大
;
; Alt + ;(+JIS)

!m:: Send "#{Down}" ; ウィンドウ最小化
;
; Alt + m

!h:: Send "#{d}" ; ウィンドウを全て最小化
;
; Alt + h

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

CapsLock & v:: {
	if GetKeyState("Shift") {
		Send ("^+{End}") ; 一番下まで選択
	} else {
		Send "^{End}"  ; 一番下
	}
}
;
; Ctrl + Shift + v & Ctrl + v

<^#d:: Send "^#{d}" ; バーチャルデスクトップ新規作成
;
; Ctrl + Win + d

<^#Left:: Send "^#{Left}" ; バーチャルデスクトップ左に切り替え
;
; Ctrl + Win + ←

<^#Right:: Send "^#{Right}" ; バーチャルデスクトップ右に切り替え
;
; Ctrl + Win + →

<^#w:: Send "^#{F4}" ; バーチャルデスクトップを閉じる
;
; Ctrl + Win + w

!+t:: Send "^+{t}" ; タブを復元
;
;  alt + shift + t

;; Visual Studio Code only.
#HotIf WinActive("ahk_exe Code.exe") or WinActive("ahk_exe Antigravity IDE.exe")

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

;; Visual Studio Code and CMD stop program command, revived clipboard.
#HotIf WinActive("ahk_exe Code.exe") or WinActive("ahk_exe Antigravity IDE.exe") or WinActive("ahk_class CASCADIA_HOSTING_WINDOW_CLASS")
CapsLock & c:: {
	ClipSaved := ClipboardAll()
	Send ("^{c}")
	KeyWait "c"
	A_Clipboard := ClipSaved
	ClipSaved := ""
}
CapsLock & l:: Send "^{l}"
;
; Ctrl + c
; Ctrl + l
#HotIf
