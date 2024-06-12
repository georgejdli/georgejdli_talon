from talon import Module, Context, actions

# --- App definition ---
mod = Module()
mod.tag("crictl", desc="tag for enabling crictl commands in your terminal")
crictl = "crictl"

# Context matching
ctx = Context()
ctx.matches = r"""
tag: user.crictl
"""


# --- Define actions ---
@mod.action_class
class Actions:
    def crictl(cmd: str = ""):
        """Print crictl command"""
    def crictl_execute(cmd: str = ""):
        """Print and execute crictl command"""

@ctx.action_class("user")
class UserActions:
    def crictl(cmd: str = ""):
        actions.insert("crictl " + cmd)
    def crictl_execute(cmd: str = ""):
        actions.insert("crictl " + cmd + "\n")
