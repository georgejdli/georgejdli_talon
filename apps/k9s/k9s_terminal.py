from talon import Context, Module

mod = Module()
mod.tag("k9s_terminal", desc="tag for enabling k9s commands in your terminal")
k9s = "k9s"

ctx = Context()
ctx.matches = r"""
tag: user.k9s_terminal
"""