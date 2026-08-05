cask "musedeck" do
  version "1.2.0"
  sha256 "9d3261aea2a598ca1b07fff5ea0f38f61ae85535c5452eb0a0b0cf537cc099e5"

  url "https://muse-deck.vercel.app/MuseDeck.dmg"
  name "MuseDeck"
  desc "Floating liquid-glass desktop widget for your music"
  homepage "https://muse-deck.vercel.app/"

  app "MuseDeck.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/MuseDeck.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/MuseDeck",
    "~/Library/Preferences/com.ashutoshbansal.musedeck.plist",
  ]
end
