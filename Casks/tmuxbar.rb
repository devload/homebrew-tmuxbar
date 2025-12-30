cask "tmuxbar" do
  version "1.0.0"
  sha256 "9aee7050e9f5fd0e7150b132bfbaf7439001cb4d2472d47c45721dc50853f777"

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
