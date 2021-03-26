#!/bin/bash

kubectl logs -f -l app=mnist,type=inference

