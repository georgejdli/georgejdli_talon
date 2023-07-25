# https://github.com/nriley/talon_community/tree/nriley/apps/homerow

os: mac
-
# Vimac/Homerow "classic" (labels)
^nav$: key(ctrl-alt-v)

# Homerow (with search + labels enabled)
^ax [<user.text>]: user.homerow_search("{text or ''}")