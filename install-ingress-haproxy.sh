#!/bin/bash

set -eo pipefail

dir=$(dirname $0)

echo "setting up ingress haproxy controller stack"

kubectl create namespace ingress-haproxy \
  --dry-run=client -o yaml | kubectl apply -f -

helm upgrade ingress-haproxy haproxytech/kubernetes-ingress \
  -n ingress-haproxy -f $dir/ingress-haproxy-values.yaml \
  --install --wait --timeout 15m