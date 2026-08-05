cask "musedeck" do
  version "1.2.0"
  sha256 "4dc74a8910bf0cc93282bf9d4d551f537a2ecfc54c4f2e9e4dfd63c936df18cc"

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
