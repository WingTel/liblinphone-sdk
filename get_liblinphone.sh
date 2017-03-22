#!/usr/bin/env bash

curl -O "http://www.linphone.org/releases/ios/liblinphone-iphone-sdk-$1.zip"
unzip "liblinphone-iphone-sdk-$1.zip"
mv ./liblinphone-sdk/apple-darwin ./
