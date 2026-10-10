#!/bin/zsh
# Build, install and launch on the simulator.
# Usage: scripts/run.sh ["iPhone 17 Pro"]
set -e
cd "$(dirname "$0")/.."
DEVICE="${1:-iPhone 17 Pro}"
scripts/build.sh "$DEVICE"
xcrun simctl boot "$DEVICE" 2>/dev/null || true
open -a Simulator
xcrun simctl bootstatus "$DEVICE" -b >/dev/null
xcrun simctl install "$DEVICE" build/DerivedData/Build/Products/Debug-iphonesimulator/MySchedule.app
xcrun simctl launch "$DEVICE" com.MySchedule
