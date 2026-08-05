cask "musedeck" do
  version "1.2.0"
  sha256 "cb8112ca1e2d6ab8ac4117b20fc6708dfd0a66d54aea5d1a5f32124eb1e38b1b"

  url "https://github.com/ashutoshb206/MuseDeck/releases/download/v#{version}/MuseDeck.dmg"
  name "MuseDeck"
  desc "Floating liquid-glass desktop music widget with time-synced lyrics & vinyl deck"
  homepage "https://github.com/ashutoshb206/MuseDeck"

  depends_on macos: ">= :sonoma"

  app "MuseDeck.app"

  zap trash: [
    "~/Library/Application Support/com.ashutoshbansal.musedeck",
    "~/Library/Preferences/com.ashutoshbansal.musedeck.plist",
  ]
end
