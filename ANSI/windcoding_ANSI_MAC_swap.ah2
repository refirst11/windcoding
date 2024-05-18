/*Repository:https://github.com/su-pull/wincoding */
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

; IME switch.
*~LWin:: {
    Send "{vk07}"
    KeyWait "LWin"
    if (A_PriorKey = "LWin") {
        Send "{vkF2sc070}{vkF3sc029}"
    }
}
*~RWin:: {
    Send "{vk07}"
    KeyWait "RWin"
    if (A_PriorKey = "RWin") {
        Send "{vkF2sc070}"
    }
}

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

;; Reset use shortcut keys.
!Capslock:: Send("")
#VKC0:: Send("")
!m:: Send("")
^+l:: Send("")
^+n:: Send("")
^!F4:: Send("")
^+p:: Send("")
^LButton:: Send("")
^WheelUp:: Send("")
^WheelDown:: Send("")
^=:: Send("")
^-:: Send("")
^+t:: Send("")
;
; is empty

CapsLock & Space:: Send "!{VKC0}" ; IME toggle.
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
;  Scroll.
;  TabScroll.

!Left:: Send "^{Left}" ; Cursor backward word.
;
; Alt + ←

!Right:: Send "^{Right}" ; Cursor forward word.
;
; Alt + →

#Left:: Send "{Home}" ; Cursor start of Line.
;
; Win + ←

#Right:: Send "{End}" ; Cursor start of Line.
;
; Win + →

#+Left:: Send "+{Home}" ; Backward selection.
;
; Shift + Alt + ←

#+Right:: Send "+{End}" ; Forward selection.
;
; Shift + Alt + →

!+Left:: Send "^+{Left}" ; Backward word selection.
;
; Shift + Win + ←

!+Right:: Send "^+{Right}" ; Forward word selection.
;
; Shift + Win + →

CapsLock & h:: Send "{BS}" ; Delete back char.
;
; Ctrl + h

CapsLock & d:: Send "{Delete}" ; Delete forward char.
;
; Ctrl + d

CapsLock & k:: Send "^{i}" ; Convert to Katakana.
;
; Ctrl + k

CapsLock & `;:: Send "^{o}" ; convert to half-width Katakana.
;
; Ctrl + ;

#r:: Send "^{r}" ; Reload.
;
; Alt + r

#+2:: Send "!{PrintScreen}" ; Window screenshot in a clipboard.
;
; Alt + Shift + 2

#+3:: Send ("+{PrintScreen}") ; Screenshot in a clipboard.
;
; Alt + Shift + 3

#+4:: Send "{PrintScreen}" ;  Cropping capture.
;
; Alt + Shift + 4

#z:: Send "^{z}" ; Redo.
;
; Alt + z

#+z:: Send "^{y}" ; Undo.
;
; Alt + Shift + z

#x:: Send "^{x}" ; Cut.
;
; Alt + x

#c:: Send ("^{c}") ; Copy.
;
; Alt + c

#v:: Send "^{v}" ; Paste.
;
; Alt + v

#a:: Send "^{a}" ; Select all.
;
; Alt + a

#f:: Send "^{f}" ; Find.
;
; Alt + f

#s:: Send "^{s}" ; Save.
;
; Alt + s

#+s:: Send "^+{s}" ; Save file as.
;
; Alt + Shift + s

#+n:: Send "^+{n}" ; New folder.
;
; Alt + Shift + n

#LButton:: Send "^{LButton}" ; Open link in a new tab.
;
; Alt + Left Click

CapsLock & Enter:: Send "{F2}" ; Rename.
;
; Ctrl + Enter

#w:: Send "^{w}" ; Close the tab window.
;
; Alt + w

#q:: Send "#{F4}" ; Close the application.
;
; Alt + q

#-:: Send "^{-}" ; Text size scale down.
;
; Alt + -

#=:: Send "^{=}" ; Text size scale up.
;
; Alt + =(+ANSI)

#m:: Send "!{Down}" ; Minimize window.
;
; Alt + m

#h:: Send "!{d}" ; Minimize all window.
;
; Alt + h

#i:: Send "^{i}"
#o:: Send "^{o}"
#p:: Send "^{p}"
#j:: Send "^{j}"
#k:: Send "^{k}"
;
; Default.

!Up:: {
    Send "{Up}{Home}" ; Home or Up.
}
;
; Win + ↑

!Down:: {
    Send "{Down}{End}" ; End or Down.
}
;
; Win + ↓

#Up:: Send "^{Home}" ; Go top.
;
; Alt + ↑

#Down:: Send "^{End}" ; Go bottom.
;
; Alt + ↓

CapsLock & v:: {
    if GetKeyState("Shift") {
        Send ("^+{End}") ; Go bottom select.
    } else {
        Send "^{End}"  ; Go bottom.
    }
}
;
; Ctrl + Shift + v & Ctrl + v

LCtrl & !:: {
    if GetKeyState("d") {
        Send "^!{d}" ; New Virtual Desktop.
    }
}
;
; Ctrl + Win + d

#+t:: Send "^+{t}" ; Restore tabs
;
;  alt + shift + t

#d:: Send "^{d}" ; Word selection.
;
; Alt + d

;; Visual Studio Code only.
#HotIf WinActive("ahk_exe Code.exe")
!Up:: Send "#{Up}" ; Swap the selection range up.
;
; Win + ↑

!Down:: Send "#{Down}" ; Swap the selection range down.
;
; Win + ↓

!+Up:: Send "#+{Up}" ; Copy the selection range up.
;
; Win + Shift + ↑

!+Down:: Send "#+{Down}" ; Copy the selection range down.
;
; Win + Shift + ↓

#+l:: Send "^+{l}" ; Match selection.
;
; Alt + Shift + L

#/:: Send "^{/}" ; Comment out.
;
; Alt + /

#+p:: Send "^+{p}" ; Command palette.
;
; Alt + p
#HotIf

;; Visual Studio Code and CMD stop program command, revived clipboard.
#HotIf WinActive("ahk_exe Code.exe") or WinActive("ahk_class CASCADIA_HOSTING_WINDOW_CLASS")
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