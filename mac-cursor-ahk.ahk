#InstallKeybdHook
#UseHook

!+Left::Send +{Home} ; 後退選択
!+Right::Send +{End} ; 前方選択
!d::Send ^{d} ; command D 一括選択
!q::Send,!{F4} ; command Q 強制終了

^w::Send {} ;
^s::Send {} ;
^z::Send {} ;
^x::Send {} ;
^c::Send {} ;
^v::Send {} ;
^+l::Send {} ;

^h::Send {BS} ; 後退削除
^d::Send {Delete} ; 削除
^m::Send {Enter} ; エンター

^f::Send {Right} ; 右 (前方) へ
^b::Send {Left}  ; 左（後方）へ
^p::Send {Up} ; 上（前）へw
^n::Send {Down} ; 下（次）へ
^a::Send {Home} ; 行頭／ページ先頭へ
^e::Send {End} ; 行末／ページ末尾へ
!+l::Send ^+{l}


!a::Send ^{a} ; 全体選択
!f::Send ^{f} ; 検索
!s::Send ^{s} ; 保存
!z::Send ^{z} ; 戻し
!+z::Send ^{y} ; 進み
!x::Send ^{x} ; 切り取り
!c::Send ^{c} ; コピー
!v::Send ^{v} ; 貼り付け



