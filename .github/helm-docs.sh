#!/bin/bash
set -euo pipefail

HELM_DOCS_VERSION="1.13.1"
ARCH=$(uname -m)

if which helm-docs > /dev/null; then
    echo "helm-docs is already installed"

    helm-docs
else
    # install helm-docs
    curl --silent --show-error --fail --location --output /tmp/helm-docs.tar.gz https://github.com/norwoodj/helm-docs/releases/download/v"${HELM_DOCS_VERSION}"/helm-docs_"${HELM_DOCS_VERSION}"_Linux_${ARCH}.tar.gz
    tar -xf /tmp/helm-docs.tar.gz helm-docs

    # validate docs
    ./helm-docs
fi

git diff --exit-code
