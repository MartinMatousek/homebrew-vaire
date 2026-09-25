cask "vaire" do
  version "1.3.9"
  sha256 "cdf2a7cf1619dfdd75789ccd8558723a6878320d1a0e4fcdbd29e505e3f61887"

  url "https://github.com/MartinMatousek/Vaire/releases/download/v#{version}/Vaire.zip"
  name "Vaire"
  desc "Automatic time tracker with Claude Code integration"
  homepage "https://github.com/MartinMatousek/Vaire"

  depends_on macos: :sonoma

  app "Vaire.app"

  zap trash: [
    "~/Library/Application Support/Vaire",
    "~/Library/Preferences/com.martinmatousek.vaire.app.plist",
  ]

  caveats <<~EOS
    Vaire is not notarized. On first launch, macOS will block it.
    Go to System Settings → Privacy & Security, scroll down, and click
    "Open Anyway" next to the Vaire warning, then confirm.
  EOS
end
