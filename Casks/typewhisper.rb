cask "typewhisper" do
  version "1.0.0"
  sha256 "bff78ed8120fd966ff300eaa41d9705075a47e3a99938dce890f5db13be4246b"

  url "https://github.com/TypeWhisper/typewhisper-mac/releases/download/v#{version}/TypeWhisper-v#{version}.dmg",
      verified: "github.com/TypeWhisper/typewhisper-mac/"

  name "TypeWhisper"
  desc "Speech-to-text and AI text processing for macOS"
  homepage "https://github.com/TypeWhisper/typewhisper-mac"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "TypeWhisper.app"

  zap trash: [
    "~/Library/Application Support/TypeWhisper",
    "~/Library/Preferences/com.typewhisper.mac.plist",
    "~/Library/Caches/com.typewhisper.mac",
    "~/Library/HTTPStorages/com.typewhisper.mac",
  ]
end
