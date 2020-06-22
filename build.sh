#!/bin/sh

docker build --tag ethi0/1c_server:latest . --no-cache

docker push ethi0/1c_server:latest
