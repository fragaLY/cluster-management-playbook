#!/bin/bash
set -eu +x
helm dependency update ${HELM_CHART}
helm push-artifactory ${HELM_CHART} cmpn- --skip-reindex
