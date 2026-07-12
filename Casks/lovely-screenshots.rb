cask "lovely-screenshots" do
  version "0.4.0"
  sha256 "f0e698ee60cf0ffbf367edd862ac56d7b4eb2561eb33c43f53de9c190d7e0502"

  url "https://github.com/kusmiderdev/lovely-screenshots-releases/releases/download/v#{version}/Lovely-Screenshots-#{version}.zip"
  name "Lovely Screenshots"
  desc "Warm little screenshot studio that lives in your menu bar"
  homepage "https://github.com/kusmiderdev/lovely-screenshots-releases"

  app "Lovely Screenshots.app"

  caveats <<~EOS
    This build is not notarized by Apple. Install with:
      brew install --cask lovely-screenshots --no-quarantine
    or approve the first launch in System Settings → Privacy & Security
    ("Open Anyway").
  EOS

  zap trash: [
    "~/Library/Application Support/com.sshotter.hotter2",
    "~/Library/Preferences/com.sshotter.hotter2.plist",
  ]
end
