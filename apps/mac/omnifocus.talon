os: mac
app.bundle: com.omnigroup.OmniFocus3.MacAppStore
-
action [<phrase>]:
	# Quick Entry (keyboard shortcut is customizable)
	key(ctrl-alt-o)
	insert(user.formatted_text(phrase or "", "CAPITALIZE_FIRST_WORD"))

action first: user.omnifocus_select_tree("first tree's first descendant tree")
tree first: user.omnifocus_select_tree("item 1 of trees")

open [<phrase>]:
	key(cmd-o)
	insert(user.formatted_text(phrase or "", "ALL_LOWERCASE,NO_SPACES"))

edit: key(cmd-')
view: key(cmd-alt-')

move up: key(ctrl-cmd-up)
move down: key(ctrl-cmd-down)
move right: key(ctrl-cmd-right)
move left: key(ctrl-cmd-left)

go in box: key(cmd-1)
go projects: key(cmd-2)
go tags: key(cmd-3)	
go forecast: key(cmd-4)

due today: key(ctrl-cmd-t)
due tomorrow: key(ctrl-cmd-m)

skip: key(alt-space)
clean up: key(cmd-k)

# Using plugins from https://github.com/nriley/OmniFocus-Plug-Ins

postpone [by] <number_small> days:
	user.omnifocus_postpone(number_small)

postpone:
	key(ctrl-cmd-l)

clear dates:
	key(ctrl-cmd-\)