cask "vaire" do
  version "0.1.6"
  sha256 "d7574a011524a0706931a706eb8068c956a064b07a3c0a70929bd0275b62ae25"

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
