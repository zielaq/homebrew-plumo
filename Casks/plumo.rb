cask "plumo" do
  version "1.3.1"
  sha256 "e6149008619e31b0219aa5190487cceb3203465e28dbcbc388ab19951da026a6"

  url "https://getplumo.app/download/Plumo-#{version}.dmg"
  name "Plumo"
  desc "Fix and translate selected text in any app with a double Cmd-C"
  homepage "https://getplumo.app/"

  livecheck do
    url "https://github.com/zielaq/plumo-releases/releases/latest"
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Plumo.app"

  zap trash: [
    "~/Library/Application Support/com.local.plumo",
    "~/Library/Caches/com.local.plumo",
    "~/Library/HTTPStorages/com.local.plumo",
    "~/Library/Preferences/com.local.plumo.plist",
    "~/Library/Saved Application State/com.local.plumo.savedState",
  ]
end
