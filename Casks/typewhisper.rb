cask "typewhisper" do
  version "0.13.0"
  sha256 "b6a22b1475d7c37faf3b9fc42d52eb14fd9b3677497308499f530b54f5b35efe"

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
