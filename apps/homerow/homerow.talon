# https://github.com/nriley/knausj_talon/blob/51cf9317830d19482d49068b954ad43638993bef/apps/homerow.talon

os: mac
-
# Vimac/Homerow "classic" (labels)
^nav$: key(ctrl-alt-v)

# Homerow (with search + labels enabled)
^ax [<user.text>]: user.homerow_search("{text or ''}")