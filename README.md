# homebrew-tap

Homebrew tap for:
- [Gazewell](https://github.com/dhri-yama/gazewell), a macOS menu bar break reminder for healthier eyes.
- [Frost](https://github.com/dhri-yama/frost), a menu bar organiser that hides icons and brings them back on demand.

```sh
brew tap dhri-yama/tap
brew trust dhri-yama/tap      # recent Homebrew only loads third-party taps you have trusted
brew install --cask gazewell
brew install --cask frost
```

## First launch
Gazewell and Frost are ad-hoc signed and not notarized, so macOS may block it the first time you open it. Open **System Settings → Privacy & Security** and choose **Open Anyway**.

Frost on macOS 27 only hides icons when it runs from /Applications, which is where Homebrew installs it.

## Updating a cask
After a new release, change `version` and `sha256` in `Casks/<name>.rb`. The sha256 is printed by `./publish.sh` in each app's repo.
