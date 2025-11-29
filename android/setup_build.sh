#!/bin/bash

export WORKSPACE=`pwd`

cd $WORKSPACE

# Download android-studio tool
wget https://dl.google.com/dl/android/studio/ide-zips/2025.2.1.8/android-studio-2025.2.1.8-linux.tar.gz
tar -xvzf android-studio-2025.2.1.8-linux.tar.gz

# Download commandline tool
wget https://dl.google.com/android/repository/commandlinetools-linux-13114758_latest.zip
unzip commandlinetools-linux-13114758_latest.zip

# Download Android NDK (r27)
wget https://dl.google.com/android/repository/android-ndk-r27d-linux.zip
unzip android-ndk-r27d-linux.zip

cd $WORKSPACE
# Install SDK Build Tools
./cmdline-tools/bin/sdkmanager --sdk_root=${WORKSPACE}/android-studio "build-tools;26.0.1"

# Install SDK Platform Tools
./cmdline-tools/bin/sdkmanager --sdk_root=${WORKSPACE}/android-studio "platforms;android-30"

# Install OpenJDK Java 17
sudo apt install openjdk-17-jdk

# Export tool
export ANDROID_SDK=${WORKSPACE}/android-studio
export ANDROID_NDK=${WORKSPACE}/android-ndk-r27d
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64/
