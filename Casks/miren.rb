cask "miren" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.16.2"
  sha256 arm:          "1563bb28f6e56c46c6830d559ad43f4b43416ba4fa306a8c1a32de1a8cb38121",
         intel:        "9e8bc1ea681c6b4b0dda95e766b0e2eb0797419ebccee09cff0ee00d286c0efb",
         arm64_linux:  "c195a1a9ab836340d6b839d3efc63cf9930364dc26fb4cd3a2efacb083ca79cd",
         x86_64_linux: "a08c8eeaa053afff3bdfb7e79494831e7942e90519595dea66f8b92052957c8d"

  url "https://api.miren.cloud/assets/release/miren/v#{version}/miren-#{os}-#{arch}.zip"
  name "Miren"
  desc "Application deployment CLI for Miren Runtime"
  homepage "https://miren.dev"

  livecheck do
    url "https://api.miren.cloud/assets/release/miren/latest/version.json"
    regex(/"version"\s*:\s*"v?(\d+(?:\.\d+)+)"/i)
  end

  binary "miren"
end
