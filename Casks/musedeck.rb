cask "musedeck" do
  version "1.2.3"
  sha256 "cf10161e7a238eaca64de410c04d38dfc09f59b855e8067b03273677fef7f0cb"

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
