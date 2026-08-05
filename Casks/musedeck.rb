cask "musedeck" do
  version "1.2.0"
  sha256 "c2969c41078355436dbb5e6528efb46ad56a78ddbf1103b509b84d52e97a00db"

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
