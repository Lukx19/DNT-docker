#!/bin/sh
docker run --privileged -it -v`pwd -P`:/home/dnt/repo --name dnt --rm lukx19/dnt /bin/bash
