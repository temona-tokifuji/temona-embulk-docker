# temona-embulk-docker

## what

A simple docker image of embulk based on alpine :)

## install

```console
$ git clone git@github.com:temona-tokifuji/temona-embulk-docker.git && cd temona-embulk-docker 
$ docker build -t embulk .
$ docker images | grep embulk
embulk                               latest              7798a01df9c1        12 minutes ago      141MB
```

## usage example

```console
$ docker run --rm -it -v $(pwd):/work embulk --version
embulk 0.9.18
```
