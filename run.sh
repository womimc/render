#!/bin/bash
tmate -F ssh new-session -d
tmate display -p '#{tmate_ssh}'
exec /usr/bin/shellinaboxd -t -s /:root:1234
