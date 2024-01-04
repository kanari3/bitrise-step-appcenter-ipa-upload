#!/bin/bash
set -ex

# Ensure Microsoft AppCenter CLI installed
if hash appcenter 2>/dev/null; then
  echo "Microsoft AppCenter CLI already installed."
else
  echo "Microsoft AppCenter CLI is not installed. Installing..."
  npm install -g appcenter-cli
fi

envman add --key APP_CENTER_APP_ID
envman add --key APP_CENTER_ACCESS_TOKEN
envman add --key APP_CENTER_DISTRIBUTION_GROUP
envman add --key APP_CENTER_BUILD_MESSAGE

if [ -z "${APP_CENTER_BUILD_MESSAGE}" ] ; then
  APP_CENTER_BUILD_MESSAGE="no message"
fi

appcenter distribute release -f "${BITRISE_IPA_PATH}" -r "${APP_CENTER_BUILD_MESSAGE}" -a "${APP_CENTER_APP_ID}" --token "${APP_CENTER_ACCESS_TOKEN}" -g "${APP_CENTER_DISTRIBUTION_GROUP}" --silent

exit 0
