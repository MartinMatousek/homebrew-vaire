cask "vaire" do
  version "1.3.13"
  sha256 "27d3595266e5dba3d5943ea23b93b5ef36c69f10ed0cd2eaabfd2e6ec203b48f"

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
