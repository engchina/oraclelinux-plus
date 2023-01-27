
```
docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' oraclelinux-plus-8
ssh root@$(docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' oraclelinux-plus-8)
```

It doesn't work for mount in build stage now

