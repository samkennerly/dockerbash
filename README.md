# dockerbash

Short
[bash](https://en.wikipedia.org/wiki/Bash_(Unix_shell))
scripts for common
[Docker](https://www.docker.com/)
commands.

## short scripts for long Docker commands

Sometimes I get confused by all the images and containers I've created.

![Can Docker run containers inside containers?](squint.jpg)

Running *dockerbash* scripts helps prevent me from:

* building images with no 
[tag](https://docs.docker.com/engine/reference/commandline/build/#tag-an-image--t)
* forgetting to stop
[detached containers](https://docs.docker.com/engine/reference/run/#detached-vs-foreground)
* forgetting to delete
[temporary containers](https://docs.docker.com/engine/reference/run/#clean-up---rm)
* wasting disk space with
[dangling images](https://docs.docker.com/config/pruning/)
* searching through 
[Docker commands and options](https://docs.docker.com/engine/reference/commandline/cli/) 

## quickstart

1. [Clone this repository](https://help.github.com/articles/cloning-a-repository/) to a folder on your machine.
2. Open a terminal and `cd` to that folder.
3. Enter `bin/runit hello-world` to run a test container.

Scripts are in the 
[bin](bin)
folder. If they are not
[executable](https://en.wikipedia.org/wiki/File_system_permissions#Permissions),
then 
[sudo](https://en.wikipedia.org/wiki/Sudo)
[chmod](https://en.wikipedia.org/wiki/Chmod)
them.

## run scripts

**[bake](bin/bake)**
builds or rebuilds an image from a local 
[context](https://docs.docker.com/engine/reference/commandline/build/#extended-description).

    bin/bake myimage:latest path/to/some/folder

**[clean](bin/clean)**
deletes all containers and
[unused objects](https://docs.docker.com/engine/reference/commandline/system_prune/).

    bin/clean

**[delete](bin/delete)**
deletes an image and any containers
[descended from it](https://docs.docker.com/engine/reference/commandline/ps/#ancestor).

    bin/delete python:3.7

**[kill](bin/kill)**
kills all containers descended from the selected image.

    bin/kill python:3.7

**[runit](bin/runit)**
runs an
[interactive](https://docs.docker.com/engine/reference/run/#foreground),
[self-destructing](https://docs.docker.com/engine/reference/run/#clean-up---rm)
container.

    bin/runit python:3.7

**[show](bin/show)**
prints a summary of Docker objects on your machine.

    bin/show

## uninstall

Delete this repository from your machine.
