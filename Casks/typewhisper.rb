cask "typewhisper" do
  version "1.3.3"
  sha256 "6f21f72b539ce0cfde81d64710cffd615be5f11d0392679317884d280cb92a84"

  url "https://github.com/TypeWhisper/typewhisper-mac/releases/download/v#{version}/TypeWhisper-v#{version}.dmg"
  name "TypeWhisper"
  desc "Speech-to-text and AI text processing"
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
    "~/Library/Caches/com.typewhisper.mac",
    "~/Library/HTTPStorages/com.typewhisper.mac",
    "~/Library/Preferences/com.typewhisper.mac.plist",
  ]
end
