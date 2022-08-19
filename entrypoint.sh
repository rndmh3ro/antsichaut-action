#!/bin/sh

ARG_TO_VERSION=""
if [ ! -z "$TO_VERSION" ]; then
  ARG_TO_VERSION="--to_version $TO_VERSION"
fi

ARG_SINCE_VERSION=""
if [ ! -z "$SINCE_VERSION" ]; then
  ARG_SINCE_VERSION="--since_version $SINCE_VERSION"
fi

echo arg_to $ARG_TO_VERSION
echo to $TO_VERSION
echo arg_since $ARG_SINCE_VERSION
echo since $SINCE_VERSION


echo "antsichaut --github_token $GIT_TOKEN $ARG_SINCE_VERSION $ARG_TO_VERSION"
antsichaut --github_token $GIT_TOKEN $ARG_SINCE_VERSION $ARG_TO_VERSION
