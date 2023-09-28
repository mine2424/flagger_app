FVM = fvm flutter

.PHONY: setup
setup:
	flutter clean
	make build_runner

.PHONY: pub_get
pub_get:
	flutter pub get

.PHONY: pub_upgrade
pub_get:
	flutter pub upgrade

.PHONY: build_runner
build_runner:
	make pub_get
	flutter pub run build_runner clean
	flutter pub run build_runner build --delete-conflicting-outputs

.PHONY: build_runner_watch
build_runner:
	make pub_get
	dart run build_runner watch

.PHONY: clean
clean:
	flutter clean
	make pub_get
	make clean_pod

.PHONY: clean_pod
clean_pod:
	rm -Rf ios/Pods
	rm -Rf ios/.symlinks
	rm -Rf ios/Flutter/Flutter.podspec
	rm ios/Podfile
	pod repo update

.PHONY: format
format:
	dart fix --apply
	flutter pub run import_sorter:main
	dart format lib/* test/*
	flutter analyze