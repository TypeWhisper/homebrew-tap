cask "typewhisper" do
  version "1.3.2"
  sha256 "8a9750bd5568fa2640cc92e8e853068c4445fc32fc4abc31daaa9226046cfced"

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
