tag: terminal
and tag: user.docker
-
# Docker
docker login: user.docker("login ")
docker logout: user.docker("logout ")

# images
docker image push: user.docker("image push ")
docker image pull: user.docker("image pull ")
docker image lisa: user.docker("image ls ")


docker search [<user.text>]: user.docker("search {text or ''}")

# containers
docker [container] prune: user.docker("container prune ")
docker [container] filter prune: user.docker("container prune --filter ")
docker [container] prune until <user.number_string>: user.docker("container prune --filter 'until={number_string}m'")
docker [container] list all: user.docker("ps -a")
docker [container] list: user.docker("ps")
docker [container] remove: user.docker("rm ")
docker [container] force remove: user.docker("rm -f")
docker [container] remove all:
    user.docker("rm $(ps -a -q)")
docker [container] remove and kill all:
    user.docker("stop $(ps -a -q); ")
    user.docker("rm $(ps -a -q)")

docker [container] stop: "stop "
docker [container] run: user.docker("run ")
docker [container] copy: user.docker("cp ")
docker [container] logs [<user.text>]: user.docker("logs {text or ''}")
docker [container] inspect:
    user.docker("ps\n")
    user.docker("inspect ")
docker [container] attach:
    user.docker("ps\n")
    user.docker("attach ")

# volumes
docker volume list: user.docker("volume ls")
docker volume create: user.docker("volume create ")
docker volume inspect: user.docker("volume inspect ")
docker volume remove: user.docker("volume rm ")

# system
docker system prune: user.docker("system prune")
docker system prune all: user.docker("system prune -a")

# Compose
[docker] compose up [<user.text>]: user.docker_compose("up -d {text or ''}")
[docker] compose up build [<user.text>]: user.docker_compose("up -d --build {text or ''}")
[docker] compose up recreate [<user.text>]: user.docker_compose("up -d --force-recreate {text or ''}")
[docker] compose build [<user.text>]: user.docker_compose("build {text or ''}")
[docker] compose push [<user.text>]: user.docker_compose("push {text or ''}")
[docker] compose down [<user.text>]: user.docker_compose("down {text or ''}")
[docker] compose volume down [<user.text>]: user.docker_compose("down -v {text or ''}")