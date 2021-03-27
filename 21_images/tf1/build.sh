#!/bin/bash

source .env
docker build -t jungfrau70/elyra-ai:$TAG .
