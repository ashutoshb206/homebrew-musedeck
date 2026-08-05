cask "musedeck" do
  version "1.2.0"
  sha256 "0db1639007ba2bec749242766d98a93f64100bd2867614fe777fb27bf38ca1f4"

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
