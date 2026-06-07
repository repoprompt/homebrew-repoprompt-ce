cask "repoprompt-ce" do
  version "1.0.7,8"
  sha256 "f36ec61cc714b8190011f800c631102f12ed3f4e61217ace1dad6a15a8d60590"

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
