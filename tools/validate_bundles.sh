#!/bin/bash -ex

# Synthetically validate bundle for yaml and Juju syntax
bundles=$(find . -name "bundle*.yaml")
for bundle in $bundles; do
    juju-deployer -c $bundle -d -b
done
