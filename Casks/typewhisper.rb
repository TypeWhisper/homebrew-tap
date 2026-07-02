# frozen_string_literal: true

cask "typewhisper" do
  version "1.5.0"
  sha256 "14503baec45695ff9d26b0821fb5885a472886ee4779f4915ee258226f79e8ec"

  url "https://github.com/TypeWhisper/typewhisper-mac/releases/download/v#{version}/TypeWhisper-v#{version}.dmg"
  name "TypeWhisper"
  desc "Speech-to-text and AI text processing"
  homepage "https://github.com/TypeWhisper/typewhisper-mac"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "TypeWhisper.app"

  zap trash: [
    "~/Library/Application Support/TypeWhisper",
    "~/Library/Caches/com.typewhisper.mac",
    "~/Library/HTTPStorages/com.typewhisper.mac",
    "~/Library/Preferences/com.typewhisper.mac.plist",
  ]
end
