from talon import Context, Module

mod = Module()
mod.tag("kubectx", desc="tag for enabling kubectx commands in your terminal")
kubectx = "kubectx"

ctx = Context()
ctx.matches = r"""
tag: user.kubectx
"""