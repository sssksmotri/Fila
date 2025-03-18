fastlane documentation
----

# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```sh
xcode-select --install
```

For _fastlane_ installation instructions, see [Installing _fastlane_](https://docs.fastlane.tools/#installing-fastlane)

# Available Actions

## iOS

### ios sync_certificates

```sh
[bundle exec] fastlane ios sync_certificates
```

Синхронизация сертификатов и профилей через Match

### ios upload_to_testflight

```sh
[bundle exec] fastlane ios upload_to_testflight
```

Upload IPA to App Store

### ios deploy_to_appstore

```sh
[bundle exec] fastlane ios deploy_to_appstore
```

Сборка и загрузка в App Store

### ios increment_version_patch

```sh
[bundle exec] fastlane ios increment_version_patch
```

Increment the version code and patch version

### ios increment_version_minor

```sh
[bundle exec] fastlane ios increment_version_minor
```

Increment the version code and minor version

### ios increment_version_major

```sh
[bundle exec] fastlane ios increment_version_major
```

Increment the version code and major version

----

This README.md is auto-generated and will be re-generated every time [_fastlane_](https://fastlane.tools) is run.

More information about _fastlane_ can be found on [fastlane.tools](https://fastlane.tools).

The documentation of _fastlane_ can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
