#!/bin/bash

mkdir -p dir.a
mkdir -p dir.a/dir.b
mkdir -p dir.a/dir.c
touch ./dir.a/dir.b/file.a
touch ./dir.a/dir.b/file.b
cd ./dir.a/dir.c
ln -s ../dir.b/file.a link.a