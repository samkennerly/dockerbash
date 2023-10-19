# dockerbash

Keeping track of all my containers can be difficult.

<img
  alt="tribbles"
  src="https://raw.githubusercontent.com/samkennerly/posters/master/dockerbash.jpeg"
  title="They noil not, neither do they spin.">

## abstract

*Dockerbash* is a few short
[shell scripts](https://en.wikipedia.org/wiki/Shell_script)
which run
[Docker](https://www.docker.com/)
commands for:

- remembering to
[tag](https://docs.docker.com/engine/reference/commandline/build/#tag)
images
- deleting
[dangling images](https://docs.docker.com/config/pruning/#prune-images)
and other
[leftovers](https://docs.docker.com/engine/reference/commandline/system_prune/)
- stopping
[detached containers](https://docs.docker.com/engine/reference/run/#detached-vs-foreground)
which I forgot about
- running
[interactive](https://docs.docker.com/engine/reference/run/#foreground)
containers which
[self-destruct](https://docs.docker.com/engine/reference/run/#clean-up---rm)
when finished
- showing all my containers, images, volumes, and networks

## basics

1. [Clone this repo](https://help.github.com/articles/cloning-a-repository/) to a folder on your machine.
2. Open a
[terminal](https://en.wikipedia.org/wiki/Command-line_interface)
and `cd` to that folder.
3. `bin/runit hello-world` to run a test container.

Scripts are in the
[bin](bin)
folder.
You might need to
[chmod](https://en.wikipedia.org/wiki/Chmod)
them if they are not
[executable](https://en.wikipedia.org/wiki/File_system_permissions#Permissions).

## commands

| description | command |
| ---- | ---- |
| build an image and tag it | `bake TAG [CONTEXT]` |
| delete all containers and leftovers | `clean` |
| delete an image and any containers using it | `delete IMAGE` |
| stop all containers create from an image | `kill IMAGE` |
| run an interactive, self-destructing container | `runit [OPTIONS] IMAGE [CMD]` |
| show images, volumes, networks, and containers | `show` |

## dependencies

1. Docker for
[Linux](https://docs.docker.com/install/),
[Mac](https://docs.docker.com/v17.12/docker-for-mac/install/),
or
[Windows](https://docs.docker.com/docker-for-windows/install/)

## examples

Build (or rebuild) `myimage:v2` with `path/to/some/folder` as the
[build context](https://docs.docker.com/engine/reference/commandline/build/#extended-description).
```bash
bin/bake myimage:v2 path/to/some/folder
```

Run `bash` in an interactive, self-destructing `myimage:v2` container.
```
bin/runit myimage:v2 bash
```

Delete `myimage:v2` and any containers
[descended from it](https://docs.docker.com/engine/reference/commandline/ps/#ancestor).
```bash
bin/delete myimage:v2
```

Stop all containers descended from `myimage:v2`.
```bash
bin/kill myimage:v2
```

## faq

### Where are the official docs?

- Docker [CLI](https://docs.docker.com/engine/reference/commandline/cli/)
- Docker [run](https://docs.docker.com/engine/reference/run/)
- [Dockerfile](https://docs.docker.com/engine/reference/builder/)
