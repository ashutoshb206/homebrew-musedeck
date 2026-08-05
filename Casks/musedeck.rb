cask "musedeck" do
  version "1.2.0"
  sha256 "cc19d89234548aaefd3bd8e08d327814e4ef0bbcc60072926b444e1031313a95"

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
