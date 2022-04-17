# source: https://github.com/AndrewDant/andrew_talon/blob/main/mode_custom.talon
not mode: sleep
-
^commander$:
    mode.disable("dictation")
    mode.enable("command")

^talon (re start|restart): user.talon_relaunch()