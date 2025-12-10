# Miren Homebrew Tap

This is the official Homebrew tap for [Miren Runtime](https://github.com/mirendev/runtime).

## Installation

```bash
brew tap mirendev/tap
brew install --cask miren
```

## Upgrading

```bash
brew upgrade --cask miren
```

## Uninstalling

```bash
brew uninstall --cask miren
brew untap mirendev/tap
```

## Manual Update

The cask is automatically updated when new releases are published to the runtime repository.

To manually trigger an update:

```bash
gh workflow run update-cask.yml -R mirendev/homebrew-tap
```

Or with a specific version:

```bash
gh workflow run update-cask.yml -R mirendev/homebrew-tap -f version=v0.2.0
```
