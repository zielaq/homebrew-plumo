# Homebrew tap for Plumo

[Plumo](https://getplumo.app) improves and translates selected text in any app:
select, press ⌘C ⌘C, press Enter. Free with a local engine; Pro is a one-time
purchase.

```sh
brew install --cask zielaq/plumo/plumo
```

Updates arrive inside the app (Sparkle), so `brew upgrade` is not needed — the
cask is marked `auto_updates`. To remove the app together with its settings and
caches:

```sh
brew uninstall --zap --cask plumo
```

The cask is refreshed automatically on every stable release of Plumo. Release
notes: <https://github.com/zielaq/plumo-releases/releases>.
