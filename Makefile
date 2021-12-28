init:
	brew bundle install --no-lock
	bundle install --path bundle/vendors
	brew bundle
xcode:
	xcodegen
	bundle exec pod install --repo-update
clean:
	rm -rf NomadBook.xcworkspace
	rm -rf NomadBook.xcodeproj

	rm -rf Pods
	rm -f Podfile.lock