cask "lovely-screenshots" do
  version "0.4.3"
  sha256 "7bbda609db4c7d83eb08ec6b14422ee3e78eb66aa1fe7c4471078aa669510a70"

  url "https://github.com/kusmiderdev/lovely-screenshots-releases/releases/download/v#{version}/Lovely-Screenshots-#{version}.zip"
  name "Lovely Screenshots"
  desc "Warm little screenshot studio that lives in your menu bar"
  homepage "https://github.com/kusmiderdev/lovely-screenshots-releases"

  auto_updates true   # the app updates itself via Sparkle; brew just does the first install

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
