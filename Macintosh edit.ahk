#InstallKeybdHook
#UseHook

*~LAlt::Send {Blind}{vk07} ; alt ime ahk copy code line 111~112
*~RAlt::Send {Blind}{vk07} ; https://github.com/karakaram/alt-ime-ahk/blob/master/alt-ime-ahk.ahk

^w:: 
^s:: 
^z::
^x:: 
^v::
^+l::
	Return ; Windows初期値削除

^h::Send {BS} ; Delete Back Char / 後方文字削除
^d::Send {Delete} ; Delete Forward Char / 前方文字削除
^f::Send {Right} ; → Cursor Forward / カーソル右
^b::Send {Left}  ; ←  Cursor Back /  カーソル左
^p::Send {Up} ; 	↑ Cursor up line / カーソル上行
^n::Send {Down} ; ↓ Cursor down line / カーソル下行
^a::Send {Home} ; Cursor Start of Line / カーソル行頭
^e::Send {End} ; Cursor End of Line / カーソル行末

!+Left::Send +{Home} ; Backward selection / 後方行選択
!+Right::Send +{End} ; Forward selection / 前方行選択
#+Left::Send ^+{Left} ; Backward word selection / 後方単語選択
#+Right::Send ^+{Right} ; Forward word selection / 前方単語選択
!d::Send ^{d} ; Word Selection / 単語一括選択
!q::Send,!{F4} ; 	Close The Application / 強制終了

!+l::Send ^+{l} ; Match Selection / 一致全選択
!/::Send ^{/} ; コメントアウト(vsc)/commentout

!w::Send ^{w} ; Close the tab window / タブを 閉じる
!a::Send ^{a} ; Select All / 全体選択
!f::Send ^{f} ; Find / 検索
!s::Send ^{s} ; Save / 保存
!z::Send ^{z} ; Redo / 戻し
!+z::Send ^{y} ; Undo / 進み
!x::Send ^{x} ; Cut / 切り取り
!c::Send ^{c} ; Copy / コピー
!v::Send ^{v} ; Paste / 貼り付け

#If WinNotActive,ahk_class CASCADIA_HOSTING_WINDOW_CLASS || WinNotActive,ahk_exe Code.exe  ;  
	^c::Send {} ;
#If WinNotActive
;Visual Studio Code and CMD on Stop Program Boolean
