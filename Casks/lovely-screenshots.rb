cask "lovely-screenshots" do
  version "0.6.2"
  sha256 "bdde35327d0cfd06ad6b6cade448bc5bb5d65cf7ce78ac0d64f7065c4405ea02"

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
