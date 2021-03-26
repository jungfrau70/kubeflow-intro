#!/bin/bash

aws ecr get-login-password --region ap-northeast-2 | docker login --username AWS --password-stdin https://004625312447.dkr.ecr.ap-northeast-2.amazonaws.com


{
        "auths": {
                "004625312447.dkr.ecr.ap-northeast-2.amazonaws.com": {},
                "https://004625312447.dkr.ecr.ap-northeast-2.amazonaws.com": {},
                "https://index.docker.io/v1/": {}
        },
        "HttpHeaders": {
                "User-Agent": "Docker-Client/19.03.12 (linux)"
        }

