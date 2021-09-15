#!/bin/bash
set -eu +x

helm repo add cmpn- ${HELM_URL} \
      --username ${HELM_REPO_USERNAME}  \
      --password ${HELM_REPO_PASSWORD}
helm repo update
