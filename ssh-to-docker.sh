#!/bin/bash

ssh root@$(docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' oraclelinux-plus-8)
