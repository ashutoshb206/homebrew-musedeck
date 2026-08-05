cask "musedeck" do
  version "1.2.0"
  sha256 "45c4e4636c9a32da56578e1fae281c05366b964f9f0565a8f8b04a0b093f27d3"

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
