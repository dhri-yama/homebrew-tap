# homebrew-tap

Homebrew tap for [Gazewell](https://github.com/dhri-yama/gazewell), a macOS menu bar break reminder for healthier eyes.

```sh
brew tap dhri-yama/tap
brew trust dhri-yama/tap      # recent Homebrew only loads third-party taps you have trusted
brew install --cask gazewell
```

## First launch
Gazewell is ad-hoc signed and not notarized, so macOS may block it the first time you open it. Open **System Settings → Privacy & Security** and choose **Open Anyway**.

## Updating the cask
After a new Gazewell release, change `version` and `sha256` in `Casks/gazewell.rb`. The sha256 is printed by `./publish.sh` in the Gazewell repo.
