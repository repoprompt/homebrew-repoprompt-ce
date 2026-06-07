cask "repoprompt-ce" do
  version "1.0.8,9"
  sha256 "20ddcd94e2d95032a34b859560605f7f36b606ca16ca78cec1a01defd9b7bb3c"

  url "https://github.com/repoprompt/repoprompt-ce-updates/releases/download/v#{version.csv.first}/RepoPrompt-#{version.csv.first}-#{version.csv.second}.zip"
  name "RepoPrompt CE"
  desc "Open-source community edition of RepoPrompt"
  homepage "https://github.com/repoprompt/repoprompt-ce"

  livecheck do
    url "https://github.com/repoprompt/repoprompt-ce-updates/releases/latest/download/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "RepoPrompt CE.app"

  uninstall quit: "com.pvncher.repoprompt.ce"

  zap trash: [
    "~/Library/Application Support/RepoPrompt CE",
    "~/Library/Caches/com.pvncher.repoprompt.ce",
    "~/Library/HTTPStorages/com.pvncher.repoprompt.ce",
    "~/Library/Preferences/com.pvncher.repoprompt.ce.plist",
    "~/Library/Saved Application State/com.pvncher.repoprompt.ce.savedState",
  ]
end
