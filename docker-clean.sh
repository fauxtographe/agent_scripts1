#!/bin/bash

#Quick script to clean up any leftover Docker images/containers and wipe the slate clean!

#Author Casey
#Date 2023-03-04

echo "Removing Docker containers..."
docker rm -f $(docker ps -a -q)

echo "Removing Docker images..."
docker rmi -f $(docker images -q)

