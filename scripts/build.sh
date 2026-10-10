#!/bin/zsh
# Build for the simulator, printing only errors, warnings and the result.
# Usage: scripts/build.sh ["iPhone 17 Pro"]
set -o pipefail
cd "$(dirname "$0")/.."
DEVICE="${1:-iPhone 17 Pro}"
xcodebuild -project MySchedule.xcodeproj -scheme MySchedule \
  -destination "platform=iOS Simulator,name=$DEVICE" \
  -derivedDataPath build/DerivedData build 2>&1 \
  | grep -E "error:|warning: .*\.swift|BUILD (SUCCEEDED|FAILED)"
