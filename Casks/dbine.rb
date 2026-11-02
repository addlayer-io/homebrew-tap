cask "dbine" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.1"
  sha256 arm:   "25cdda6b00f8493b88b34c8e1bfaf2604b7d486774aaa1082155bece68aed42a",
         intel: "78450dee3bf029f45b5bb8bfe8af7474147f61c67e7ec53bbfd6fb544631ad94"

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
