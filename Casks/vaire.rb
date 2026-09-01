cask "vaire" do
  version "0.1.2"
  sha256 "546008240b581acc7cea75e20e46c41585877c0cb7401312d7069490c731b976"

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
