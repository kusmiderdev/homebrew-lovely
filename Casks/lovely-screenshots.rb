cask "lovely-screenshots" do
  version "0.5.1"
  sha256 "f48d16f84d185c74602ea33b04e3d33c70ed853b699aefc927dac83671d1a47a"

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
