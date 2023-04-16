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
    Send "{Blind}{LCtrl DownR}"
    SendSuppressedKeyUp "LCtrl"
}
*CapsLock up::
{
    Send "{Blind}{LCtrl Up}"
}

*LCtrl:: {
    Send "{Blind}!{CapsLock}"
    SendSuppressedKeyUp "CapsLock"
}

;; IME switch
LAltPressed := false
RAltPressed := false
~LAlt:: {
    Send "{Blind}{vk07}"
    KeyWait "LAlt"
    if (A_PriorKey = "LAlt" && !LAltPressed) {
        Send "{vkF2sc070}{vkF3sc029}"
        global LAltPressed := true
        global RAltPressed := false
    }
}
~RAlt:: {
    Send "{Blind}{vk07}"
    KeyWait "RAlt"
    if (A_PriorKey = "RAlt" && !RAltPressed) {
        Send "{vkF2sc070}"
        global RAltPressed := true
        global LAltPressed := false
    }
}
LButton:: {
    global LAltPressed := false
    global RAltPressed := false
    SendInput "{Lbutton down}"
    KeyWait "LButton"
    SendInput "{Lbutton up}"
}

; CapsLock of remap.
CapsLock & q:: Send ("")
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

; CapsLock + Shift of remap.
CapsLock & +:: {
    if GetKeyState("q")
        Send ("")
    if GetKeyState("w")
        Send ("")
    if GetKeyState("r")
        Send ("")
    if GetKeyState("t")
        Send ("")
    if GetKeyState("y")
        Send ("")
    if GetKeyState("u")
        Send ("")
    if GetKeyState("i")
        Send ("")
    if GetKeyState("o")
        Send ("")
    if GetKeyState("[")
        Send ("")
    if GetKeyState("]")
        Send ("")
    if GetKeyState("\")
        Send ("")
    if GetKeyState("s")
        Send ("")
    if GetKeyState("g")
        Send ("")
    if GetKeyState("j")
        Send ("")
    if GetKeyState("'")
        Send ("")
    if GetKeyState("z")
        Send ("")
    if GetKeyState("x")
        Send ("")
    if GetKeyState("c")
        Send ("")
    if GetKeyState("m")
        Send ("")
    if GetKeyState(",")
        Send ("")
    if GetKeyState(".")
        Send ("")
    if GetKeyState("/")
        Send ("")
}

;; Reset use shortcut keys.
!VKC0:: Send("")
^w:: Send("")
#m:: Send("")
^s:: Send("")
^z:: Send("")
^x:: Send("")
^c:: Send("")
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

CapsLock & Space:: Send "!{VKC0}" ; IME toggle.
;
; Ctrl + Space

CapsLock & b:: Send "{Left}" ; ← Cursor back.
;
; Ctrl + b

CapsLock & f:: Send "{Right}" ; → Cursor forward.
;
; Ctrl + f

CapsLock & p:: Send "{Up}" ; ↑ Cursor up line.
;
; Ctrl + p

CapsLock & n:: Send "{Down}" ; ↓ Cursor down line.
;
; Ctrl + n

CapsLock & a:: Send "{Home}" ; Cursor start of line.
;
; Ctrl + a

CapsLock & e:: Send "{End}" ; Cursor end of line.
;
; Ctrl + e

#Left:: Send "^{Left}" ; Cursor backward word.
;
; Alt + ←

#Right:: Send "^{Right}" ; Cursor forward word.
;
; Alt + →

!Left:: Send "{Home}" ; Cursor start of Line.
;
; Win + ←

!Right:: Send "{End}" ; Cursor start of Line.
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

!r:: Send "^{r}" ; Reload.
;
; Alt + r

!+2:: Send "!{PrintScreen}" ; Window screenshot in a clipboard.
;
; Alt + Shift + 2

!+3:: Send ("+{PrintScreen}") ; Screenshot in a clipboard.
;
; Alt + Shift + 3

!+4:: Send "{PrintScreen}" ;  Cropping capture.
;
; Alt + Shift + 4

!z:: Send "^{z}" ; Redo.
;
; Alt + z

!+z:: Send "^{y}" ; Undo.
;
; Alt + Shift + z

!x:: Send "^{x}" ; Cut.
;
; Alt + x

!c:: Send ("^{c}") ; Copy.
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

!+n:: Send "^+{n}" ; New folder.
;
; Alt + Shift + n

!o:: Send "^{Enter}" ; Open.
;
; Alt + o

!LButton:: Send "^{LButton}" ; Open link in a new tab.
;
; Alt + Left Click

CapsLock & Enter:: Send "{F2}" ; Rename.
;
; Ctrl + Enter

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

CapsLock & Up:: Send "#{Up}" ; Maximize window.
;
; Ctrl + ↑

CapsLock & Down:: Send "#{Down}" ; Minimize window.
;
; Ctrl + ↓

CapsLock & Left:: Send "#{Left}" ; Maximize window.
;
; Ctrl + ←

CapsLock & Right:: Send "#{Right}" ; Minimize window.
;
; Ctrl + →

#Up:: {
    Send "{Up}{Home}" ; Home or Up.
}
;
; Win + ↑

#Down:: {
    Send "{Down}{End}" ; End or Down.
}
;
; Win + ↓

!Up:: Send "^{Home}" ; Go top.
;
; Alt + ↑

!Down:: Send "^{End}" ; Go bottom.
;
; Alt + ↓

; CapsLock & # & Left::Send "#^{Left}" ; Left Virtual Desktop.
; ;
; ; win + Ctrl + ←

; CapsLock & # & Right::Send "#^{Right}" ; Right Virtual Desktop.
; ;
; ; win + Ctrl + →

#d:: Send "^#{d}" ; New Virtual Desktop.
;
; Win + d

#q:: Send "^#{F4}" ; Close Virtual Desktop.
;
; Win + q

!+t:: Send "^+{t}" ; Restore tabs
;
;  alt + shift + t

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
CapsLock & c:: {
    ClipSaved := ClipboardAll()
    Send ("^{c}")
    KeyWait "c"
    A_Clipboard := ClipSaved
    ClipSaved := ""
}
;
; ctrl + c
#HotIf