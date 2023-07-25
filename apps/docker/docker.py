from talon import Module, Context, actions

# --- App definition ---
mod = Module()
mod.tag("docker", desc="tag for enabling docker commands in your terminal")
docker = "docker"

# Context matching
ctx = Context()
ctx.matches = r"""
tag: user.docker
"""


# --- Define actions ---
@mod.action_class
class Actions:
    def docker(command: str = ""):
        """Run docker command"""
    def docker_compose(command: str = ""):
        """Run docker compose command"""

@ctx.action_class("user")
class UserActions:
    def docker(command: str = ""):
        actions.insert("docker " + command)
    def docker_compose(command: str = ""):
        actions.insert("docker-compose " + command)

# if you need sudo (if you didnt "fix" the sudo requirement by adding your user to the docker unix group)
# @ctx.action_class("user")
# class UserActions:
#     def docker(command: str = ""):
#         actions.insert("sudo docker " + command)
#     def docker_compose(command: str = ""):
#         actions.insert("sudo docker-compose " + command)