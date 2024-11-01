toggle := false  ; Initialize a toggle variable

^n::  ; Ctrl + N activates the toggle
Sleep, 100  ; Add a slight delay (100 ms) before toggling
toggle := !toggle  ; Toggle the state

if (toggle) {
    Send, {LShift down}  ; Hold down the left Shift key
} else {
    Send, {LShift up}  ; Release the left Shift key
}
return

; Ensure the Shift key is released when exiting the script
#Persistent
OnExit, ReleaseShift

ReleaseShift:
if (toggle) {
    Send, {LShift up}  ; Ensure the Shift key is released when exiting the script
}
return
