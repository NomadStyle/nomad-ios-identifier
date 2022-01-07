# nomad-ios-identifier

## Setting up the project and environment

1. Run `make init` for downloading the dependencies
2. Run `make xcode` for building up the project

## Project overview

1. Project has 3 targets, Core, NomadBook, Integration. 
2. Core has the desired functionality.
3. NomadBook is a General purpose wrapper for quick testing.
4. Integration target checks the integration of the library via podspec.

## General Identifier discussion

* Identifier implementation here is done via using App groups. This is the easiest way from the developer perspective but
harder from the consumer perspective.
* The consumer in addition will have to adapt their apps to use the group via Entitlements.
* This is a level 1 accuracy of identifier because it only relies on generated UUID. In order to increase the level location/ip/advertising identifier can be added.
* The identifier is persistent on the device as long as at least one app has it. If all apps are deleted with the sdk or the device is wiped the identifier is lost.

## Demo
### [Tape Preview](https://s.tape.sh/1bS8cTDn)
[![Img](https://s.tape.sh/api/thumbnail?tapeSource=https://tapes.tape.sh/ckpqmf7y643830vmn8o30ppcu/kwV0CcoMduWUMNjITl1RD.mp4)](https://s.tape.sh/1bS8cTDn)

## Integration

You can use Cocoapods to do the SDK integration via 
`pod NomadIdentifierSDK`

# General knowledge

1. Build on ruby 2.7.2
2. MacOS Monterey 12.1
3. Xcode 13.2.1

# Stack

## Bundler

Tool for putting the ruby gems together

## Xcodegen

Used to generate the project and resources for it

## SwiftGen

Used to generate assets

## Fastlane

Used to automate a lot of tasks for everyday developer life

## Cocoapods

Manage third party dependencies

## SwiftUI

Application setup for using SwiftUI

# FAQ

Brewbundle:
https://thoughtbot.com/blog/brewfile-a-gemfile-but-for-homebrew

Homebrew:
https://brew.sh

Bundler:
https://bundler.io

Ruby:
https://stackify.com/install-ruby-on-your-mac-everything-you-need-to-get-going/
brew install ruby
