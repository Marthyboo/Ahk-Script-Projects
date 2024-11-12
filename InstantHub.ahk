#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases
#SingleInstance Force  ; Ensures only one instance of the script is running
#Warn  ; Enable warnings to assist with detecting common errors
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability

`::  ; Backtick key (`)
{
    Send, /
    Sleep, 50  ; Wait 50 milliseconds
    SendInput, {Tab}
    Sleep, 50  ; Wait another 50 milliseconds
    Send, /hub
    Sleep, 100  ; Slightly longer wait before Enter
    SendInput, {Enter}
    Sleep, 50  ; Wait before ending the hotkey
    return
}