cask "open-meow" do
  version "0.0.3"
  sha256 "fbdeb794bd84c5ac29e7d4017ba5c57bf5ce6e20166d8dee0ab6912c0d200264"

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
