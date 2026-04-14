cask "typewhisper" do
  version "1.2.2"
  sha256 "620419f55af8f6a31b2f135dc58150b97d78a6fd3cf82c1ac4be389d06c0d0f5"

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
