#!/usr/bin/env bash

mkdir -p "${HOME}/Incubator/docker/jenkins"
cd ../conf && docker-compose up -d
