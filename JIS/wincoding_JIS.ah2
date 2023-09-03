/*Repository:https://github.com/su-pull/wincoding/blob/main/README_JIS.md */
#UseHook

;; not select tab.
*~LAlt:: Send "{vk07}"
*~RAlt:: Send "{vk07}"

; Ctrl of remap.
^r:: Send ("")
^t:: Send ("")
^y:: Send ("")
^u:: Send ("")
^[:: Send ("")
^]:: Send ("")
^\:: Send ("")
^g:: Send ("")
^j:: Send ("")
^':: Send ("")
^m:: Send ("")
^,:: Send ("")
^.:: Send ("")
^/:: Send ("")

;; Ctrl + Shift of remap.
^+q:: Send ("")
^+w:: Send ("")
^+r:: Send ("")
^+y:: Send ("")
^+u:: Send ("")
^+i:: Send ("")
^+o:: Send ("")
^+[:: Send ("")
^+]:: Send ("")
^+\:: Send ("")
^+g:: Send ("")
^+j:: Send ("")
^+':: Send ("")
^+z:: Send ("")
^+x:: Send ("")
^+c:: Send ("")
^+m:: Send ("")
^+,:: Send ("")
^+.:: Send ("")
^+/:: Send ("")

;; Reset default shortcut keys.
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

^Space:: Send "!{VKC0}" ; IMEトグル
;
; Ctrl + Space

^b:: {
	if GetKeyState("Shift") {
		Send ("+{Left}")  ; ← Cursor back select.
	} else {
		Send "{Left}" ; ← Cursor back.
	}
}
;
; Ctrl + Shift + b & Ctrl + b

^f:: {
	if GetKeyState("Shift") {
		Send ("+{Right}") ; → Cursor forward select.
	} else {
		Send "{Right}" ; → Cursor forward.
	}
}
;
; Ctrl + Shift + f & Ctrl + f

^p:: {
	if GetKeyState("Shift") {
		Send ("+{Up}") ; ↑ Cursor up line select.
	} else {
		Send "{Up}" ; ↑ Cursor up line.
	}
}
;
; Ctrl + Shift + p & Ctrl + p

^n:: {
	if GetKeyState("Shift") {
		Send ("+{Down}") ; ↑ Cursor down line select.
	} else {
		Send "{Down}" ; ↓ Cursor down line.
	}
}
;
; Ctrl + Shift + n & SCtrl + n

^a:: {
	if GetKeyState("Shift") {
		Send ("+{Home}") ; → Start of line select.
	} else {
		Send "{Home}" ; Cursor start of line.
	}
}
;
; Ctrl + Shift + a & Ctrl + a

^e:: {
	if GetKeyState("Shift") {
		Send ("+{End}") ; → End of line select.
	} else {
		Send "{End}" ; Cursor end of line.
	}
}

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

^d:: Send "{Delete}" ; 前方文字削除
;
; Ctrl + d

^h:: Send "{BS}" ; 後方文字削除
;
; Ctrl + h

^k:: Send "^{i}" ; カタカナに変換
;
; Ctrl + k

^;:: Send "^{o}" ; 半角カタカナに変換
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

^Enter:: Send "{F2}" ; 名前を変更
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

^v:: {
	if GetKeyState("Shift") {
		Send ("^+{End}") ; 一番下まで選択
	} else {
		Send "^{End}"  ; 一番下
	}
}
;
; Ctrl + Shift + v & Ctrl + v

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

;; Visual Studio Code and CMD stop program command, revived clipboard.
#HotIf WinActive("ahk_exe Code.exe") or WinActive("ahk_class CASCADIA_HOSTING_WINDOW_CLASS")
^c:: {
	ClipSaved := ClipboardAll()
	Send ("^{c}")
	KeyWait "c"
	A_Clipboard := ClipSaved
	ClipSaved := ""
}
!c:: Send ("")
;
; Ctrl + c
#HotIf