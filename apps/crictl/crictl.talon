tag: terminal
and tag: user.kubectl
-
cry [control]: user.crictl("")

cry help: user.crictl_execute("-h")

cry image: user.crictl_execute("img")
# there are other options for image, add as needed

cry version: user.crictl_execute("version")

cry info: user.crictl_execute("info")
cry info quiet: user.crictl_execute("info -q")

cry [container] list: user.crictl_execute("ps")
cry [container] list all: user.crictl_execute("ps -a")

cry pods: user.crictl_execute("pods")