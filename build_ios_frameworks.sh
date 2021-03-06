#!/bin/bash

[[ "${VOXEET_SKIP_IOS_BUILD}" == "true" ]] && echo "skip build ios" && exit 0

echo "Installing \"cordova-plugin-voxeet\" ios dependencies (carthage)"
carthage update --platform ios --project-directory `dirname "$0"`/src/ios
