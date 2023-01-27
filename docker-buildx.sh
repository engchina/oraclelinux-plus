#!/bin/bash

release=8

docker buildx build --push --no-cache \
       	-t engchina/oraclelinux-plus:${release} \
	-f dockerfile-oraclelinux-plus .
