#!/bin/zsh
docker run --privileged -it -v`pwd -P`:/home/dnt/repo --name dnt --rm lukx19/dnt2 /bin/bash
