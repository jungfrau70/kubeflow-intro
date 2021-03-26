#!/bin/bash
  
source .env
docker build -t jungfrau70/tf1-cpu:$TAG .
