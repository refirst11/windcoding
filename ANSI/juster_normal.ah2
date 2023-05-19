/*Repository:https://github.com/su-pull/juster */
#UseHook

; IME switch.
*~LAlt:: {
	Send "{Blind}{vk07}"
	KeyWait "LAlt"
	if (A_PriorKey = "LAlt") {
		Send "{vkF2sc070}{vkF3sc029}"
	}
}
*~RAlt:: {
	Send "{Blind}{vk07}"
	KeyWait "RAlt"
	if (A_PriorKey = "RAlt") {
		Send "{vkF2sc070}"
	}
}

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

; Ctrl + Shift of remap.
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

;; Reset use shortcut keys.
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

^Space:: Send "!{VKC0}" ; IME toggle.
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
; Ctrl + Shift + n & Ctrl + n

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
;
; Ctrl + Shift + e & Ctrl + e

!Up:: Send "^{Home}" ; Go Top.
;
; Alt + ↑

!Down:: Send "^{End}" ; Go bottom.
;
; Alt + ↓

#Left:: Send "^{Left}" ; Cursor backward word.
;
; Alt + ←

#Right:: Send "^{Right}" ; Cursor forward word.
;
; Alt + →

^v:: {
	if GetKeyState("Shift") {
		Send ("^+{End}") ; Go bottom a select.
	} else {
		Send "^{End}"  ; Go bottom.
	}
}
;
; Ctrl + Shift + v & Ctrl + v

#Up:: {
	Send "{Up}{Home}" ; Home or  Up
}
;
; Win + ↑

#Down:: {
	Send "{Down}{End}" ; End or Down
}
;
; Win + ↓

!Left:: Send "{Home}" ; Cursor start of line.
;
; Win + ←

!Right:: Send "{End}" ; Cursor start of line.
;
; Win + →

!+Left:: Send "+{Home}" ; Backward selection.
;
; Shift + Alt + ←

!+Right:: Send "+{End}" ; Forward selection.
;
; Shift + Alt + →

#+Left:: Send "^+{Left}" ; Backward word selection.
;
; Shift + Win + ←

#+Right:: Send "^+{Right}" ; Forward word selection.
;
; Shift + Win + →

^h:: Send "{BS}" ; Delete back char.
;
; Ctrl + h

^d:: Send "{Delete}" ; Delete forward char.
;
; Ctrl + d

^k:: Send "^{i}" ; convert to Katakana.
;
; Ctrl + k

^;:: Send "^{o}" ; convert to half-width katakana.
;
; Ctrl + ;

^Enter:: Send "{F2}" ; Rename.
;
; Ctrl + Enter

!+2:: Send "!{PrintScreen}" ; Window screenshot in a clipboard.
;
; Alt + Shift + 2

!+3:: Send ("+{PrintScreen}") ; Screenshot in a clipboard.
;
; Alt + Shift + 3

!+4:: Send "{PrintScreen}" ;  Cropping capture.
;
; Alt + Shift + 4

!r:: Send "^{r}" ; Reload.
;
; Alt + r

!z:: Send "^{z}" ; Redo.
;
; Alt + z

!+z:: Send "^{y}" ; Undo.
;
; Alt + Shift + z

!x:: Send "^{x}" ; Cut.
;
; Alt + x

!c:: Send "^{c}" ; Copy.
;
; Alt + c

!v:: Send "^{v}" ; Paste.
;
; Alt + v

!a:: Send "^{a}" ; Select all.
;
; Alt + a

!f:: Send "^{f}" ; Find.
;
; Alt + f

!s:: Send "^{s}" ; Save.
;
; Alt + s

!+s:: Send "^+{s}" ; Save file as.
;
; Alt + Shift + s

!+n:: Send "^+{n}" ; New Folder.
;
; Alt + Shift + n

!o:: Send "^{Enter}" ; Open.
;
; Alt + o

!LButton:: Send "^{LButton}" ; Open link in a new tab.
;
; Alt + Left Click

!w:: Send "^{w}" ; Close the tab window.
;
; Alt + w

!q:: Send "!{F4}" ; Close the application.
;
; Alt + q

!-:: Send "^{-}" ; Text size scale down.
;
; Alt + -

!=:: Send "^{=}" ; Text size scale up.
;
; Alt + =(+ANSI)

!m:: Send "#{Down}" ; Minimize window.
;
; Alt + m

!h:: Send "#{d}" ; Minimize all window.
;
; Alt + h

^+Up:: Send "#{Up}" ; Maximize window.
;
; Ctrl + Shift + ↑

^+Down:: Send "#{Down}" ; Minimize window.
;
; Ctrl + Shift + ↓

^+Left:: Send "#{Left}" ; Maximize window.
;
; Ctrl + Shift + ←

^+Right:: Send "#{Right}" ; Minimize window.
;
; Ctrl + Shift + →

^Left:: Send "#^{Left}" ; Virtual Desktop.
;
; Ctrl + ←

^Right:: Send "#^{Right}" ; Virtual Desktop.
;
; Ctrl + →

^+d:: Send "^#{d}" ; New Virtual Desktop.
;
; Ctrl + Shift + d

^q:: Send "^#{F4}" ; Close Virtual Desktop.
;
; Ctrl + q

!+t:: Send "^+{t}" ; Restore tabs
;
;  Alt + Shift + t

;; Visual Studio Code only.
#HotIf WinActive("ahk_exe Code.exe")

#Up:: Send "!{Up}" ; Swap the selection range up.
;
; Win + ↑

#Down:: Send "!{Down}" ; Swap the selection range down.
;
; Win + ↓

#+Up:: Send "!+{Up}" ; Copy the selection range up.
;
; Win + Shift + ↑

#+Down:: Send "!+{Down}" ; Copy the selection range down.
;
; Win + Shift + ↓

!d:: Send "^{d}" ; Word selection.
;
; Alt + d

!+l:: Send "^+{l}" ; Match selection.
;
; Alt + Shift + L

!/:: Send "^{/}" ; Comment out.
;
; Alt + /

!+p:: Send "^+{p}" ; Command palette.
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
;
; Ctrl + c
#HotIf