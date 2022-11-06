# https://github.com/nriley/knausj_talon/blob/51cf9317830d19482d49068b954ad43638993bef/apps/homerow.talon

os: mac
-
# Vimac/Homerow "classic" (labels)
^nav$: key(ctrl-alt-v)

# Homerow Redux (UI search)
^row [<user.text>]:
    key(ctrl-alt-shift-h)
    sleep(50ms)
    insert(text or "")