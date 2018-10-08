# dockerbash

Short
[bash]
(https://en.wikipedia.org/wiki/Bash_(Unix_shell))
scripts for common
[Docker]
(https://www.docker.com/)
commands.

## quickstart

1. [Clone this repository]
(https://help.github.com/articles/cloning-a-repository/)
to any folder on your machine.
2. Open a terminal and `cd` to that folder.
3. Enter `bin/show` to see what Docker is doing.

You might need to 
`sudo chmod 755 bin/*`
to make scripts in the [bin](bin) folder executable.

## examples

[Show]
(bin/show)
a human-readable summary of Docker stuff on your machine:

    bin/show

[Run]
(bin/runit)
a command
[interactively]
(https://docs.docker.com/engine/reference/run/#foreground)
in a
[self-destructing]
(https://docs.docker.com/engine/reference/run/#clean-up---rm)
container:

    bin/runit ubuntu:latest echo 'Hello, World!'

[Delete]
(bin/delete)
an image and any containers using it:

    bin/delete ubuntu:latest

[Clean]
(bin/clean)
your system by
[killing]
(https://docs.docker.com/engine/reference/commandline/kill/)
containers and
[pruning]
(https://docs.docker.com/engine/reference/commandline/system_prune/)
unused data:

    bin/clean

[Bake]
(bin/bake)
a fresh image from a local 
[context folder]
(https://docs.docker.com/engine/reference/commandline/build/#extended-description):

    bin/bake myimage:latest path/to/myimage/folder

## aliases

Consider defining
[aliases]
(http://tldp.org/LDP/abs/html/aliases.html)
in your
[.profile]
(https://apple.stackexchange.com/questions/99835/how-to-create-bash-profile-and-profile)
to avoid repeatedly typing  
`/path/to/wherever/you/cloned/dockerbash/bin`  
every time you want to run a script. For example:

```
# Docker scripts
dockerbash="$HOME/code/dockerbash"
alias bake="$dockerbash/bin/bake"
alias runit="$dockerbash/bin/runit"
alias dockerclean="$dockerbash/bin/clean"
alias dockerdelete="$dockerbash/bin/delete"
alias dockershow="$dockerbash/bin/show"
```
