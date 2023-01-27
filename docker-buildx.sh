#!/bin/bash

release=8

# docker buildx create --driver-opt image=moby/buildkit:master  \
# 	             --use --name insecure-builder  \ 
# 		     --buildkitd-flags '--allow-insecure-entitlement security.insecure'
docker buildx use insecure-builder
docker buildx build --allow security.insecure --push --no-cache \
       	-t engchina/oraclelinux-plus:${release} \
	-f dockerfile-oraclelinux-plus .

# docker buildx rm insecure-builder
