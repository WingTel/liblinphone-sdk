#!/usr/bin/env bash

echo 'remove prev liblinphone'
git clean -xdf
echo 'download new liblinphone'
curl -O "http://www.linphone.org/releases/ios/liblinphone-iphone-sdk-$1.zip"
unzip "liblinphone-iphone-sdk-$1.zip"
rm "liblinphone-iphone-sdk-$1.zip"
mv ./liblinphone-sdk/apple-darwin ./

echo 'please update liblinphone-sdk.podspec + create new tag + zip thi folder and download it to repository'
