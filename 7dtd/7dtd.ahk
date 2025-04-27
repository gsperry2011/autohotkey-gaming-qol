;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Autorun.
;; credit from https://www.reddit.com/r/ARKone/comments/bi1vly/autohotkey_useful_macros_for_ark_survival_evolved/
;; mouse thumb button, forward. 
;; version 1.0 7dtd and beyond:
;; #IfWinActive 7 Days To Die
;; *$XButton2::
;;    Send % (WalkToggle := !WalkToggle) ? "{W Down}" : "{W Up}"
;; Return

;; alpha 20 7dtd (no sprint toggle option in game)
;; works for undead legacy
#IfWinActive 7 Days To Die
*$XButton2::
    WalkToggle := !WalkToggle
    if (WalkToggle) {
        Send, {Shift Down}{W Down}
    } else {
        Send, {Shift Up}{W Up}
    }
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; AutoAttack
;; credit: https://community.7daystodie.com/topic/101-keyboard-autohotkey-scripts-autorun-and-such/
;Shift + Mouse button 5 locks down LMB for larger mining projects.
;Simply press LMB to stop.
#IfWinActive 7 Days To Die
+XButton2::
Click up left
sleep ,10
Click down left
return


;Shift + Mouse button 4 is autofire for the E key when I traipse around the desert, picking up stuff.
;E to stop.
#IfWinActive 7 Days To Die
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

; F1 does a "open container (using e keybind) and then does a "move all stackable items"
#IfWinActive 7 Days To Die
F1::
Send, e
Sleep, 100 ; 1000 milliseconds = 1 second
;  to identify the coords to place here, run the script -> in the task tray for the ahk script open 'window spy'
;; these are for me personally, in undead legacy the "move all" button moves around between cardboard and metal chests so the coords need to change here as you upgrade
;; Cardboard boxes
;; Click, 2192, 286 ; Replace with your desired X,Y screen coordinates
;; iron chests
Click, 2350, 286
return