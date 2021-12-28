use_frameworks!
inhibit_all_warnings!

platform :ios, '14.0'
project 'NomadBook.xcodeproj'

def testing_pods
  pod 'Quick', '2.2.1'
  pod 'Nimble', '9.0.0'
end

def infrastructure_pods
  pod 'SwiftGen', '6.4.0'
  pod 'SwiftLint', '0.42.0'
end

def shared_pods
end

target 'NomadBook' do
  shared_pods
end

target 'Core' do
  infrastructure_pods
end

target 'Core Tests' do
  testing_pods
end
