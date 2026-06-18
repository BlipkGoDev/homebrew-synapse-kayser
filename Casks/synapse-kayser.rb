cask "synapse-kayser" do
  version "5.0.0"

  on_intel do
    url "https://github.com/BlipkGoDev/synapse-kayser-releases/releases/download/v#{version}/Synapse.Kayser-x64.dmg"
    sha256 "c5c1d9629382ca09d8898b26242575ce012a46ca28e88d402e72ff2c276b60a1"
  end

  on_arm do
    url "https://github.com/BlipkGoDev/synapse-kayser-releases/releases/download/v#{version}/Synapse.Kayser-arm64.dmg"
    sha256 "7740df66c7e948f5b4716e786b49622e9f5abd66b8c19a0076261792d3abef56"
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
