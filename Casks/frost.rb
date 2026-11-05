cask "frost" do
  version "0.17.0"
  sha256 "4188f9277ff38f87ff5ebc31e5532b1061d5553b1fef7dfae0b5bea10eaa7e25"

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
