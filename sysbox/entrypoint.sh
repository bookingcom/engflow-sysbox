#!/usr/bin/env bash
sudo dockerd -H tcp://0.0.0.0:2375 -H unix:///var/run/docker.sock &>>/dev/null &

while (! docker stats --no-stream &>>/dev/null ); do
  # Docker takes a few seconds to initialize
  sleep 1
done

eval "$@"
