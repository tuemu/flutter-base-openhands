#!/bin/bash

# Set the Flutter SDK version to a fixed value
FLUTTER_VERSION="3.29.2"

# Install Flutter SDK
git clone https://github.com/flutter/flutter.git -b release/"$FLUTTER_VERSION"
export PATH="$PATH:$(pwd)/flutter/bin"

# Check Flutter version
flutter --version

# Install Android SDK (for Android development)
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  # Linux case
  sdkmanager "platforms;android-33" "build-tools;30.0.3"
  export ANDROID_HOME="$HOME/Android/Sdk"
  export PATH="$PATH:$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools"
elif [[ "$OSTYPE" == "darwin"* ]]; then
  # macOS case
  echo "Please install Android SDK manually."
fi

# Install Xcode (for iOS development)
if [[ "$OSTYPE" == "darwin"* ]]; then
  echo "Please install Xcode manually."
fi

# Run Flutter Doctor
flutter doctor

# Install required tools
flutter pub get
dart run build_runner build --delete-conflicting-outputs

# Set environment variables
echo "Environment variable settings completed."