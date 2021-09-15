#!/bin/bash
set -eu +x

cd ${HELM_CHART}
helm dependency update
helm template . --debug
