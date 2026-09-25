cask "vaire" do
  version "1.3.12"
  sha256 "180e0e52c6610a871657a7724fef475da03507f8c6680c0e3596b5530fa005bd"

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
