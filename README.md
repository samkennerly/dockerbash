# dockerbash

Short
[bash](https://en.wikipedia.org/wiki/Bash_(Unix_shell))
scripts for common
[Docker](https://www.docker.com/)
commands.

## use Docker without losing track of reality

Sometimes I create so many images and containers that I forget what I'm doing.

![*squints*](squint.jpg)

Running a few standardized scripts helps prevent me from:

* building images with no 
[tag](https://docs.docker.com/engine/reference/commandline/build/#tag-an-image--t)
* forgetting about
[detached containers](https://docs.docker.com/engine/reference/run/#detached-vs-foreground)
* filling my hard disk with
[dangling images](https://docs.docker.com/config/pruning/)
* cluttering my system with
[temporary containers](https://docs.docker.com/engine/reference/run/#clean-up---rm)
* searching through all
[Docker commands and options](https://docs.docker.com/engine/reference/commandline/cli/)
* repeatedly
[mistyping long commands](https://github.com/nvbn/thefuck)


## quickstart

1. [Clone this repository](https://help.github.com/articles/cloning-a-repository/)
to any folder on your machine.
2. Open a terminal and `cd` to that folder.
3. Enter `bin/show` to see what Docker is doing.

Each *dockerbash* script is an
[executable](https://en.wikipedia.org/wiki/File_system_permissions#Permissions)
file in the
[bin](bin)
folder.  
You might need to
[sudo](https://en.wikipedia.org/wiki/Sudo)
[chmod](https://en.wikipedia.org/wiki/Chmod)
them if their permissions are incorrect.

## scripts

**[bake](bin/bake)**  
Build or update an image from a local 
[context](https://docs.docker.com/engine/reference/commandline/build/#extended-description).

    bin/bake myimage:latest path/to/some/folder

**[clean](bin/clean)**  
[Kill](https://docs.docker.com/engine/reference/commandline/kill/)
running containers and
[prune](https://docs.docker.com/engine/reference/commandline/system_prune/)
unused Docker objects.

    bin/clean

**[delete](bin/delete)**  
Delete an image and any containers
[descended](https://docs.docker.com/engine/reference/commandline/ps/#ancestor)
from it.

    bin/delete debian:latest

**[runit](bin/runit)**  
Run a command
[interactively](https://docs.docker.com/engine/reference/run/#foreground)
in a
[self-destructing](https://docs.docker.com/engine/reference/run/#clean-up---rm)
container.

    bin/runit debian:latest bash

**[show](bin/show)**  
Print a human-readable summary of Docker stuff on your machine.

    bin/show

## aliases

Consider defining
[aliases](http://tldp.org/LDP/abs/html/aliases.html)
in your
[.bash_profile](https://www.gnu.org/software/bash/manual/html_node/Bash-Startup-Files.html)
to avoid typing  
`/path/to/wherever/you/cloned/dockerbash/bin`  
every time you want to run a script. Example:

```
dockerbash="$HOME/code/dockerbash"
alias bake="$dockerbash/bin/bake"
alias runit="$dockerbash/bin/runit"
alias dockerclean="$dockerbash/bin/clean"
alias dockerdelete="$dockerbash/bin/delete"
alias dockershow="$dockerbash/bin/show"
```
