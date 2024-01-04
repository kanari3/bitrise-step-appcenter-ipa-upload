#!/bin/bash
set -ex

# Ensure Microsoft AppCenter CLI installed
if hash appcenter 2>/dev/null; then
  echo "Microsoft AppCenter CLI already installed."
else
  echo "Microsoft AppCenter CLI is not installed. Installing..."
  npm install -g appcenter-cli
fi

envman add --key app_id
envman add --key api_token
envman add --key distribution_group
envman add --key build_message

if [ -z "${build_message}" ] ; then
  build_message="no message"
fi

appcenter distribute release -f "${BITRISE_IPA_PATH}" -r "${build_message}" -a "${app_id}" --token "${api_token}" -g "${distribution_group}" --quiet

exit 0
