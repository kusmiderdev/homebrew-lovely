# homebrew-lovely

Homebrew tap for [Lovely Screenshots](https://lovelyscreenshots.com) — a warm little screenshot studio for your Mac menu bar.

```sh
brew tap kusmiderdev/lovely
brew trust kusmiderdev/lovely
brew install --cask lovely-screenshots
xattr -cr "/Applications/Lovely Screenshots.app"   # one-time (beta is not notarized)
```
