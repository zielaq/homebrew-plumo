cask "plumo" do
  version "1.2.0"
  sha256 "bafcb1e901f0b696417e4c938da6f434ade4181089e4518c820e133c804c95c8"

  url "https://github.com/zielaq/plumo-releases/releases/download/v#{version}/Plumo-#{version}.dmg",
      verified: "github.com/zielaq/plumo-releases/"
  name "Plumo"
  desc "Fix and translate selected text in any app with a double Cmd-C"
  homepage "https://getplumo.app/"

  livecheck do
    url :url
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
