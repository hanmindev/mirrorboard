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



#If GetKeyState("Alt","P")
	` & w::MouseMove, 0,-25,50,R
	` & a::MouseMove, -25,0,50,R
	` & s::MouseMove, 0,25,50,R
	` & d::MouseMove, 25,0,50,R
	
	` & q::Send {LButton}
	` & e::Send {RButton}

	
	` & r::send,{WheelUp}

	` & f::send,{WheelDown}


#If

!i::MouseMove, 0,-25,50,R
!j::MouseMove, -25,0,50,R
!k::MouseMove, 0,25,50,R
!l::MouseMove, 25,0,50,R

!u::Send {LButton}
!o::Send {RButton}

!p::send,{WheelUp}

!;::send,{WheelDown}

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



;; Top row
*q::
send, {blind}p
return
*p::
send, {blind}q
return

*w::
send, {blind}o
return
*o::
send, {blind}w
return

*e::
send, {blind}i
return
*i::
send, {blind}e
return

*r::
send, {blind}u
return
*u::
send, {blind}r
return

*t::
send, {blind}y
return
*y::
send, {blind}t
return

;; Middle row

*a::
send, {blind};
return
*;::
send, {blind}a
return

*s::
send, {blind}l
return
*l::
send, {blind}s
return

*d::
send, {blind}k
return
*k::
send, {blind}d
return

*f::
send, {blind}j
return
*j::
send, {blind}f
return

*g::
send, {blind}h
return
*h::
send, {blind}g
return


*`::
send, {blind}'
return
*'::
send, {blind}``
return

;; Bottom row


*z::
send, {blind}/
return
*/::
send, {blind}z
return

*x::
send, {blind}.
return
*.::
send, {blind}x
return

*c::
send, {blind},
return
*,::
send, {blind}c
return

*v::
send, {blind}m
return
*m::
send, {blind}v
return

*b::
send, {blind}n
return
*n::
send, {blind}b
return

*1::
send, {blind}6
return
*6::
send, {blind}1
return

*2::
send, {blind}7
return
*7::
send, {blind}2
return

*3::
send, {blind}8
return
*8::
send, {blind}3
return

*4::
send, {blind}9
return
*9::
send, {blind}4
return

*5::
send, {blind}0
return
*0::
send, {blind}5
return

;; Number
LCtrl::
send {blind}{Backspace}
return


Tab::
send {blind}{Enter}
Suspend, on
return
Enter::
send {blind}{Tab}
return

~Space::
Suspend, on
return


*Capslock::
Suspend
	If A_IsSuspended
		{	
		}
	else
		{
		}
return

*AppsKey::
Suspend
	If A_IsSuspended
		{
		}
	else
		{
		}
return
