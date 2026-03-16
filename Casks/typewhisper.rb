cask "typewhisper" do
  version "0.13.2"
  sha256 "80ace371d460f36cdd3862e3505e4883f02ed034d8bee9e43110581359caf0cc"

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
