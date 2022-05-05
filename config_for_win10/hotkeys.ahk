/*
  Website: https://www.autohotkey.com/

  How to run this script every time start pc:
    1.Find the script file, select it, and press Ctrl+C.
    2.Press Win+R to open the Run dialog, then enter shell:startup and click OK or Enter.
        This will open the Startup folder for the current user.
        To instead open the folder for all users, enter shell:common startup (however, in that case you must be an administrator to proceed).
    3.Right click inside the window, and click "Paste Shortcut". The shortcut to the script should now be in the Startup folder.
*/

; Constants
GIT_PATH := "C:\Program Files\Git\git-bash.exe"
NIR_PATH := "C:\Program Files\nircmd\nircmd.exe"

; Remapping of keys
!w::Send !{F4}
CapsLock::Esc

; Runs
^!t::Run %GIT_PATH% ; Ctrl+Alt+T

; audio funcs
PrintScreen::Send {Volume_Down}
ScrollLock::Send {Volume_Up}

Pause::
audio_flag:=!audio_flag
if audio_flag
    Run %NIR_PATH% "setdefaultsounddevice" "tv"
    ; MsgBox % "Current audio device is tv"
else
    Run %NIR_PATH% "setdefaultsounddevice" "earphone"
    ; MsgBox % "Current audio device is earphone"
return
