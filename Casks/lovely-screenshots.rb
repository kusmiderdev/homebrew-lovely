cask "lovely-screenshots" do
  version "0.4.0"
  sha256 "f51ec65c711d2e24178214010dfc365ce222844c0493085b58accfc8258a84c5"

  url "https://github.com/kusmiderdev/lovely-screenshots-releases/releases/download/v#{version}/Lovely-Screenshots-#{version}.zip"
  name "Lovely Screenshots"
  desc "Warm little screenshot studio that lives in your menu bar"
  homepage "https://github.com/kusmiderdev/lovely-screenshots-releases"

  app "Lovely Screenshots.app"

  caveats <<~EOS
    This build is not notarized by Apple (indie beta). After installing, either
    run once:
      xattr -cr "/Applications/Lovely Screenshots.app"
    or approve the first launch in System Settings → Privacy & Security
    ("Open Anyway"). Details: https://lovelyscreenshots.com/install
  EOS

  zap trash: [
    "~/Library/Application Support/com.sshotter.hotter2",
    "~/Library/Preferences/com.sshotter.hotter2.plist",
  ]
end
