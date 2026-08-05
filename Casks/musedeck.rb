cask "musedeck" do
  version "1.2.0"
  sha256 "a6623daed485215d8d55d4cf4ffd043ed679fa67ed53686466fc94f2507c5127"

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
