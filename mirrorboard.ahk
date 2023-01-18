;; Mirrorboard 
;; blog.xkcd.com/2007/08/14/mirrorboard-a-one-handed-keyboard-layout-for-the-lazy/
;;by /u/hanmango_kiwi
;;
;; difference is that when you press caps lock or the menu key (it is on the bottom left of my keyboard), your entire keyboard flips, so you can use your left hand as well if you want. `<->', ctrl->backspace, tab<->enter

Suspend, on
#InstallKeybdHook
#SingleInstance, force
SendMode Input
#UseHook
SetCapsLockState, alwaysoff

Speed := 25
State := 0

full_command_line := DllCall("GetCommandLine", "str")

if not (A_IsAdmin or RegExMatch(full_command_line, " /restart(?!\S)"))
{
    try
    {
        if A_IsCompiled
            Run *RunAs "%A_ScriptFullPath%" /restart
        else
            Run *RunAs "%A_AhkPath%" /restart "%A_ScriptFullPath%"
    }
    ExitApp
}

;; MsgBox A_IsAdmin: %A_IsAdmin%`nCommand line: %full_command_line%


#If GetKeyState("Alt","P") and State = 0
	` & 1:: Speed := 5
	` & 2:: Speed := 25
	` & 3:: Speed := 125
	` & 4:: Speed := 625
	` & w::MouseMove, 0,-Speed,50,R
	` & a::MouseMove, -Speed,0,50,R
	` & s::MouseMove, 0,Speed,50,R
	` & d::MouseMove, Speed,0,50,R
	
	` & q::Send {LButton}
	` & e::Send {RButton}

	
	` & r::Send {WheelUp}
	` & f::Send {WheelDown}
	` & c::Send {WheelLeft}
	` & v::Send {WheelRight}
	
	` & z::Send {XButton1}
	` & x::Send {XButton2}
	` & g::Send {MButton}


#If State = 0 or State = 1

!7:: Speed := 5
!8:: Speed := 25
!9:: Speed := 125
!0:: Speed := 625

!i::MouseMove, 0,-Speed,50,R
!j::MouseMove, -Speed,0,50,R
!k::MouseMove, 0,Speed,50,R
!l::MouseMove, Speed,0,50,R

!u::Send {LButton}
!o::Send {RButton}

!p::Send {WheelUp}
!;::Send {WheelDown}
!.::Send {WheelLeft}
!/::Send {WheelRight}

!m::Send {XButton1}
!,::Send {XButton2}
!'::Send {MButton}

!+q::Send {{}
!+e::Send {}}

!q::Send {[}
!e::Send {]}

!Tab::Send \
!+Tab::Send |


!w::Send {Up}
!a::Send {Left}
!s::Send {Down}
!d::Send {Right}

!^w::Send ^{Up}
!^a::Send ^{Left}
!^s::Send ^{Down}
!^d::Send ^{Right}

!+w::Send +{Up}
!+a::Send +{Left}
!+s::Send +{Down}
!+d::Send +{Right}

!^+w::Send ^+{Up}
!^+a::Send ^+{Left}
!^+s::Send ^+{Down}
!^+d::Send ^+{Right}



!#q::Send {PrintScreen}
!#w::Send {ScrollLock}
!#e::Send {Pause}

!#a::Send {Insert}
!#s::Send {Home}

!#d::Send {PgUp}
!#z::Send {Delete}
!#x::Send {End}
!#c::Send {PgDn}

!+#w::Send {LShift down}{Home}{LShift up}
!+#d::Send {LShift down}{PgDn}{LShift up}
!+#s::Send {LShift down}{End}{LShift up}
!+#e::Send {LShift down}{PgUp}{LShift up}

!^#w::Send {LCtrl down}{Home}{LCtrl up}
!^#d::Send {LCtrl down}{PgDn}{LCtrl up}
!^#s::Send {LCtrl down}{End}{LCtrl up}
!^#e::Send LCtrl down}{PgUp}{{LCtrl up}


!1::Send {-}
!2::Send {=}

!+1::Send {_}
!+2::Send {+}


#If State = 0

;; Top row
*q::
send, {blind}p
return

*w::
send, {blind}o
return

*e::
send, {blind}i
return

*r::
send, {blind}u
return

*t::
send, {blind}y
return

;; Middle row

*a::
send, {blind};
return

*s::
send, {blind}l
return

*d::
send, {blind}k
return

*f::
send, {blind}j
return

*g::
send, {blind}h
return


*`::
send, {blind}'
return


;; Bottom row

*z::
send, {blind}/
return

+x::
send, {blind}<
return

*x::
send, {blind}.
return

+c::
send, {blind}>
return
*c::
send, {blind},
return

*v::
send, {blind}m
return

*b::
send, {blind}n
return

*1::
send, {blind}6
return

*2::
send, {blind}7
return

*3::
send, {blind}8
return

*4::
send, {blind}9
return

*5::
send, {blind}0
return

;; Number
LCtrl::
send {blind}{Backspace}
return

; Extra programmer features

*u::
send, {blind}{[}
return

*o::
send, {blind}{]}
return

*i::
send, {blind}{Up}
return

*k::
send, {blind}{Down}
return

*j::
send, {blind}{Left}
return

*l::
send, {blind}{Right}
return

*m::
send, {$}
return

*,::
send, {blind}{Home}
return

*.::
send, {blind}{End}
return

*/::
send, {blind}{\}
Suspend, on
return

*;::Ctrl

*p::
send, {blind}{(}
return

*'::
send, {blind}{)}
return

; Important toggle stuff

Tab::
send {blind}{Enter}
Suspend, on
return

*~Space::
Suspend, on
return

#If State = 1

;; Top row

*p::
send, {blind}q
return
*o::
send, {blind}w
return
*i::
send, {blind}e
return
*u::
send, {blind}r
return
*y::
send, {blind}t
return
;; Middle row
*;::
send, {blind}a
return
*l::
send, {blind}s
return
*k::
send, {blind}d
return
*j::
send, {blind}f
return
*h::
send, {blind}g
return
*'::
send, {blind}``
return
;; Bottom row
*/::
send, {blind}z
return
*.::
send, {blind}x
return
*,::
send, {blind}c
return
*m::
send, {blind}v
return
*n::
send, {blind}b
return
*6::
send, {blind}1
return
*7::
send, {blind}2
return
*8::
send, {blind}3
return
*9::
send, {blind}4
return
*0::
send, {blind}5
return

'::
State := 2
return


#If State = 2

'::
State := 1
return

*~Space::
State := 1
return


RCtrl::
send {blind}{Backspace}
return

#If

*Capslock::
Suspend
State := 0
return

*AppsKey::
Suspend
State := 1
return

*Esc::
Suspend, On
return