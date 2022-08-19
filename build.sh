#!/usr/bin/env bash

set -ex

docker run \
  --rm \
  --privileged \
  -e PACKER_CACHE_DIR=/root/.cache/packer \
  -v /dev:/dev \
  -v ${PWD}:/build:ro \
  -v ${PWD}/output-raspios:/build/output-raspios \
  -v ${PWD}/packer_cache:/root/.cache/packer \
  ghcr.io/solo-io/packer-plugin-arm-image build thepiratebox.pkr.hcl

