#!/bin/sh -l
mkdir ~/.ssh && chmod 700 ~/.ssh
echo "$SSH_KEY" > ~/.ssh/id_rsa && chmod 600 ~/.ssh/id_rsa
echo "$KNOWN_HOSTS" > ~/.ssh/known_hosts && chmod 644 ~/.ssh/known_hosts
export DRONE_BRANCH=$(echo ${GITHUB_REF#refs/heads/})
curl https://raw.githubusercontent.com/karappo/drone-deploy/drone-compatible/v0.8/deploy.sh | bash
