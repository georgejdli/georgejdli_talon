#custom vscode commands go here

tag: user.k9s
win.title: /^k9s$/
-

[show] {user.k8s_object}: user.command_execute(k8s_object)

[show] (pu | pulse): user.command_execute("pu")

switch context: user.command("ctx")

wide: key(ctrl-w)