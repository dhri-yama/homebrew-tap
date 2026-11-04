cask "frost" do
  version "0.16.0"
  sha256 "0705425496b0696ed7e9e37545daf038ff87261685d5e21a506ec0fbe119a8b7"

  url "https://github.com/dhri-yama/frost/releases/download/v#{version}/Frost-#{version}.dmg"
  name "Frost"
  desc "Menu bar organiser that hides icons and brings them back on demand"
  homepage "https://github.com/dhri-yama/frost"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Frost.app"

  zap trash: "~/Library/Preferences/io.github.dhri-yama.frost.plist"
end
