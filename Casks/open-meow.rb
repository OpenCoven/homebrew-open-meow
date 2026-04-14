cask "open-meow" do
  version "0.0.1"
  sha256 "574a9dc45ce48337e7670f8202a7d4623e61cdf069ed98726079e14c03395a9b"

  url "https://github.com/PsiClaw/open-meow/releases/download/v#{version}/OpenMeow-v#{version}.dmg"
  name "OpenMeow"
  desc "Elegant Cat desktop companion shell for macOS"
  homepage "https://github.com/PsiClaw/open-meow"

  depends_on macos: ">= :sonoma"

  app "OpenMeow.app"

  zap trash: [
    "~/Library/Preferences/ai.psiclaw.openmeow.plist",
    "~/Library/Application Support/open-meow",
  ]
end
