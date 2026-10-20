cask "dbine" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "b5976597a79170c14c2c4c45fd68c70d6ff1caf8b0c40897acf7307d011c3c46",
         intel: "cfeaa24141662a4953f9eaa9db2d6ebceecd9c13a92a24ba3d4632b950f4f51e"

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
