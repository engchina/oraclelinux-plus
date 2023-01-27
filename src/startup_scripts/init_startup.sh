#!/usr/bin/env bash
set -ex

/usr/sbin/sshd

# call command
echo -e "\n\n------------------ EXECUTE COMMAND ------------------"
echo "Executing command: '$@'"
exec "$@"
