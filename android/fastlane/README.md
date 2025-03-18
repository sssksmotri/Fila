fastlane documentation
----

# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```sh
xcode-select --install
```

For _fastlane_ installation instructions, see [Installing _fastlane_](https://docs.fastlane.tools/#installing-fastlane)

# Available Actions

## Android

### android test

```sh
[bundle exec] fastlane android test
```

Run all tests

### android deploy_with_artifact

```sh
[bundle exec] fastlane android deploy_with_artifact
```

Инкремент версии и деплой новой сборки

### android create_new_app

```sh
[bundle exec] fastlane android create_new_app
```

Создание нового приложения в Google Play

### android update_app

```sh
[bundle exec] fastlane android update_app
```

Обновление существующего приложения в Google Play

### android increment_version

```sh
[bundle exec] fastlane android increment_version
```

Increment the version code and patch version

----

This README.md is auto-generated and will be re-generated every time [_fastlane_](https://fastlane.tools) is run.

More information about _fastlane_ can be found on [fastlane.tools](https://fastlane.tools).

The documentation of _fastlane_ can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
