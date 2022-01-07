Pod::Spec.new do |s|
  s.name             = 'NomadIdentifierSDK'

  s.version          = '1'
  s.summary          = '-'
  s.description      = '--'
  s.homepage         = 'https://nomadstyle.ee'
  s.license          = { :type => 'Copyright', :text => 'Copyright © 2022 NomadStyle OÜ. All rights reserved.' }
  s.author           = { 'NomadStyle OÜ' => '@nomadstyle.ee' }
  s.source           = { :git => 'git@github.com:NomadStyle/nomad-ios-identifier.git' }

  s.ios.deployment_target = '15.0'
  s.swift_version         = '5.0'
  s.source_files          = 'Core/NomadIdentifier/**/*.swift'
  s.static_framework      = true
  s.frameworks            = 'Foundation'
end
