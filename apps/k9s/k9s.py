from talon import Context, Module, actions

mod = Module()
mod.tag("k9s", desc="tag for enabling k9s key bindings in your interactive terminal")
k9s = "k9s"

ctx = Context()
ctx.matches = r"""
tag: user.k9s
"""

mod.list("k8s_object", desc="k8s objects")
ctx.lists["self.k8s_object"] = (
    "context",
    "contexts",
    "no",
    "node",
    "nodes",
    "job",
    "jobs",
    "po",
    "pod",
    "pods",
    "ns",
    "namespace",
    "namespaces",
    "services",
    "events",
    "deploy",
    "deployments",
    "rs",
    "replicasets",
    "daemonsets",
    "statefulsets",
    "config",
    "configmap",
    "storageclass",
    "pvc",
    "persistentvolumeclaim",
    "persistentvolumeclaims",
    "pv",
    "persistentvolume",
    "persistentvolumes",
    "cr",
    "clusterrole",
    "crb",
    "clusterrolebinding",
    "secrets",
    "ingress",
    "crd",
    "customresourcedefinition",
    "helm",
    "events",
    "workloads"
)

# --- Define actions ---
@mod.action_class
class Actions:
    def command_execute(cmd: str = ""):
        """Run k9s command mode. Inserts newline to immediately execute command."""
    def command(cmd: str = ""):
        """Activate k9s command mode"""


@ctx.action_class("user")
class UserActions:
    def command_execute(cmd: str = ""):
        actions.insert(":" + cmd + "\n")
    def command(cmd: str = ""):
        actions.insert(":" + cmd + " ")