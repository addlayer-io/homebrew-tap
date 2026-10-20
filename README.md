# AddLayer Homebrew Tap

Homebrew casks for [DBine](https://dbine.com), the desktop database manager by AddLayer.

## Install

```sh
brew install --cask addlayer-io/tap/dbine
```

The cask installs the signed and notarized DMG published on
[DBine's GitHub releases](https://github.com/addlayer-io/dbine/releases), for Apple Silicon or Intel.

## Update

DBine updates itself: when a new version is out, the app offers it. `brew upgrade --cask dbine`
also works; this tap follows each DBine release within a few hours.

## Uninstall

```sh
brew uninstall --cask dbine
```

To also remove DBine's local data (saved connections, queries, caches and settings):

```sh
brew uninstall --zap --cask dbine
```

Passwords stored in the macOS keychain are kept; remove them in Keychain Access if you want them gone.
