# dockerbash

Short
[bash](https://en.wikipedia.org/wiki/Bash_(Unix_shell))
scripts for common
[Docker](https://www.docker.com/)
commands.

## use Docker without losing track of reality

Sometimes I get confused by all the images and containers I've created.

![Can Docker run containers inside containers?](squint.jpg)

Running a few standardized scripts helps prevent me from:

* building images with no 
[tag](https://docs.docker.com/engine/reference/commandline/build/#tag-an-image--t)
* forgetting to stop
[detached containers](https://docs.docker.com/engine/reference/run/#detached-vs-foreground)
* forgetting to delete
[temporary containers](https://docs.docker.com/engine/reference/run/#clean-up---rm)
* wasting disk space with
[dangling images](https://docs.docker.com/config/pruning/)
* searching through all
[Docker commands and options](https://docs.docker.com/engine/reference/commandline/cli/) 

## quickstart

1. [Clone this repository](https://help.github.com/articles/cloning-a-repository/)
to any folder on your machine.
2. Open a terminal and `cd` to that folder.
3. Enter `bin/runit hello-world:linux`.

Scripts are in the 
[bin](bin)
folder. You may need to
[sudo](https://en.wikipedia.org/wiki/Sudo)
[chmod](https://en.wikipedia.org/wiki/Chmod)
them to make them
[executable](https://en.wikipedia.org/wiki/File_system_permissions#Permissions).

## scripts

**[bake](bin/bake)**
builds or rebuilds an image from a local 
[context](https://docs.docker.com/engine/reference/commandline/build/#extended-description).

    bin/bake myimage:latest path/to/some/folder

**[clean](bin/clean)**
deletes all containers and any
[unused objects](https://docs.docker.com/engine/reference/commandline/system_prune/).

    bin/clean

**[delete](bin/delete)**
deletes an image and any containers
[descended from it](https://docs.docker.com/engine/reference/commandline/ps/#ancestor).

    bin/delete debian:latest

**[runit](bin/runit)**
runs a command
[interactively](https://docs.docker.com/engine/reference/run/#foreground)
in a
[self-destructing](https://docs.docker.com/engine/reference/run/#clean-up---rm)
container.

    bin/runit debian:latest bash

**[show](bin/show)**
prints a summary of Docker objects on your machine.

    bin/show

## aliases

Consider defining
[aliases](http://tldp.org/LDP/abs/html/aliases.html)
in your
[.bash_profile](https://www.gnu.org/software/bash/manual/html_node/Bash-Startup-Files.html)
if you use these scripts often. Example:

```
# Dockerbash aliases
dockerbash="$HOME/code/dockerbash"
alias bake="$dockerbash/bin/bake"
alias runit="$dockerbash/bin/runit"
alias dockerclean="$dockerbash/bin/clean"
alias dockerdelete="$dockerbash/bin/delete"
alias dockershow="$dockerbash/bin/show"
```
