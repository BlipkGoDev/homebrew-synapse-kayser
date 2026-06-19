cask "synapse-kayser" do
  version "6.0.4"

  on_intel do
    url "https://github.com/BlipkGoDev/synapse-kayser-releases/releases/download/v#{version}/Synapse.Kayser-x64.dmg"
    sha256 "7c3dd1ada0cf0c3b7e428c7feefc3862d62e2c2c00f41b48fcb3807225ca41e5"
  end

  on_arm do
    url "https://github.com/BlipkGoDev/synapse-kayser-releases/releases/download/v#{version}/Synapse.Kayser-arm64.dmg"
    sha256 "992261e5d3f5ed18b56ae618f37e7bf86d75ec91899eee95c29d91c6cff95a69"
  end

  name "Synapse Kayser"
  desc "HTTP Client · WebSocket · Load Testing · Flows · Database Manager · AI"
  homepage "https://github.com/BlipkGoDev/synapse-kayser-releases"

  app "Synapse Kayser.app"

  zap trash: [
    "~/Library/Application Support/synapse-kayser",
    "~/Library/Preferences/com.blipk.synapsekayser.plist",
    "~/Library/Logs/synapse-kayser",
    "~/Library/Caches/com.blipk.synapsekayser",
  ]
end
