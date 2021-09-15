#!/bin/bash
set -eu +x

cd ${HELM_CHART}

version=$(grep version "Chart.yaml" | awk '{print $2}')
if (echo "${version}" | grep -v -Eq '^[0-9]{1,}\.[0-9]{1,}\.[0-9]{1,}$'); then
  cat <<EOM
Invalid Version:  ${version}
Valid Patter:     {{major_version_number}}.{{minor_version_number}}.{{patch_version_number}}
Example:          1.2.3
EOM
  exit 1
fi

set -eux
helm lint .
helm template . >/dev/null
