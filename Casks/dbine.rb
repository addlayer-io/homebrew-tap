cask "dbine" do
  arch arm: "aarch64", intel: "x64"

  version "1.6.3"
  sha256 arm:   "f551c6e8ee46d3d4783867f667e8c946a767bdb160ed48685948f6019468febf",
         intel: "381075a787df9a0b1f66defef7fc4cc944b95ee0f06a72dd3fb078b69759cb7b"

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
