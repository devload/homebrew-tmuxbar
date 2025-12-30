cask "tmuxbar" do
  version "1.0.1"
  sha256 "801111361811f8e0ff389b2122965fe6fc062ecb5833e1f2fa1082f79fe51fa1"

  url "https://github.com/devload/TmuxBar/releases/download/v#{version}/TmuxBar-#{version}.dmg"
  name "TmuxBar"
  desc "Native macOS menu bar app for managing tmux sessions"
  homepage "https://github.com/devload/TmuxBar"

  depends_on macos: ">= :ventura"

  app "TmuxBar.app"

  zap trash: [
    "~/Library/Preferences/com.tmuxbar.app.plist",
  ]
end
