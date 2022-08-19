#!/bin/sh

ARG_TO_VERSION=""
if [ ! -z "$TO_VERSION" ]; then
  ARG_TO_VERSION="--to_version $TO_VERSION"
fi

ARG_SINCE_VERSION=""
if [ ! -z "$SINCE_VERSION" ]; then
  ARG_SINCE_VERSION="--to_version $SINCE_VERSION"
fi

antsichaut --token $GITHUB_TOKEN $ARG_SINCE_VERSION $ARG_TO_VERSION
