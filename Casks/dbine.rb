cask "dbine" do
  arch arm: "aarch64", intel: "x64"

  version "1.6.2"
  sha256 arm:   "8f494c1a4171a9ad529b14edd3fd67f71c79ec32cfe33cdab68907b9c0795b61",
         intel: "9c2a8a8fe83ff03cde5e17daccf8a086e461a7aade7dd41c4eec3ee0656cd104"

  url "https://github.com/addlayer-io/dbine/releases/download/v#{version}/DBine_#{version}_#{arch}.dmg",
      verified: "github.com/addlayer-io/dbine/"
  name "DBine"
  desc "Desktop database manager for SQL and NoSQL engines"
  homepage "https://dbine.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "DBine.app"

  zap trash: [
    "~/Library/Application Support/com.addlayer.dbine",
    "~/Library/Application Support/io.addlayer.dbine",
    "~/Library/Caches/com.addlayer.dbine",
    "~/Library/Caches/io.addlayer.dbine",
    "~/Library/Preferences/com.addlayer.dbine.plist",
    "~/Library/Preferences/io.addlayer.dbine.plist",
    "~/Library/WebKit/com.addlayer.dbine",
    "~/Library/WebKit/io.addlayer.dbine",
  ]
end
