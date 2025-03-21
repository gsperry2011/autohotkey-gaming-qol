;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Autorun.
;; credit from https://www.reddit.com/r/ARKone/comments/bi1vly/autohotkey_useful_macros_for_ark_survival_evolved/
;; mouse thumb button, forward. 
#IfWinActive 7 Days To Die
*$XButton2::
    Send % (WalkToggle := !WalkToggle) ? "{W Down}" : "{W Up}"
Return


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; AutoAttack
;; credit: https://community.7daystodie.com/topic/101-keyboard-autohotkey-scripts-autorun-and-such/
;Shift + Mouse button 5 locks down LMB for larger mining projects.
;Simply press LMB to stop.
+XButton2::
Send {e up}{e down}
Click up left
sleep ,10
Click down left
return


;Shift + Mouse button 4 is autofire for the E key when I traipse around the desert, picking up stuff.
;E to stop.
+XButton1::
Loop 
{ 
	Send, e
	Sleep, 50
	GetKeyState, VKeyState, e, P 
	if VKeyState = D 
		break 
} 
return
