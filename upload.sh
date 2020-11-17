#!/bin/bash

VersionString=`grep -E 's.version.*=' EaseUI.podspec`
VersionNumber=`tr -cd 0-9 <<<"$VersionString"`
NewVersionNumber=$(($VersionNumber + 1))
LineNumber=`grep -nE 's.version.*=' EaseUI.podspec | cut -d : -f1`

git add .
git commit -am modification
git pull origin master --tags

sed -i "" "${LineNumber}s/${VersionNumber}/${NewVersionNumber}/g" EaseUI.podspec

echo "current version is ${VersionNumber}, new version is ${NewVersionNumber}"

git commit -am ${NewVersionNumber}
git tag ${NewVersionNumber}
git push origin master --tags
pod trunk push ./EaseUI.podspec --verbose --use-libraries --allow-warnings
