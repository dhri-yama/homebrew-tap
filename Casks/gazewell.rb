cask "gazewell" do
  version "1.0.1"
  sha256 "fff3048b2525307c2ec909d2adc8bca3a7f0e1017e170c5dcc81dd65a6b51e76"

  url "https://github.com/dhri-yama/gazewell/releases/download/v#{version}/Gazewell-#{version}.dmg"
  name "Gazewell"
  desc "Menu bar break reminder for healthier eyes"
  homepage "https://github.com/dhri-yama/gazewell"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Gazewell.app"

  zap trash: "~/Library/Preferences/local.gazewell.plist"
end
