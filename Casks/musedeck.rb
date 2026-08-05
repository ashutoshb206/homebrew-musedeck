cask "musedeck" do
  version "1.2.0"
  sha256 "15718b6c27f09ad10ab109d5d797695a165c1f63ab417df6e97ee474286b2c20"

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
