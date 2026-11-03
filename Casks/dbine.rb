cask "dbine" do
  arch arm: "aarch64", intel: "x64"

  version "1.4.0"
  sha256 arm:   "4b280e92ae57188647622d446d857b50a4c90a7020988e0735b103230e329b94",
         intel: "e428c05d7f94c9e16bf69813af3f13dbffea35b89085233e0d903aba6ff9797d"

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
