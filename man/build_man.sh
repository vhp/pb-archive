#!/bin/bash
#Use the following command to build the man page from
#the markdown (.md) file. You need to have pandoc installed.
pandoc -s -w man pinboard-archive.1.md -o pinboard-archive.1
