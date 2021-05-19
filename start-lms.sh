#!/bin/bash
export $AUDIO=$(getent group audio | cut -d: -f3)
docker-compose up -d 
