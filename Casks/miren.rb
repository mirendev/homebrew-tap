cask "miren" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.7.0"
  sha256 arm:          "89b5e6ceb765ee48a9d82d51b4890331c88078c27e4c84e9c460177c5520ac2d",
         intel:        "978586c1ba1defbde204499b96daf8e9b252b3eb5b003f2e021905f6cd0bab19",
         arm64_linux:  "a2210d3a1f5c1b2e8e9f8bf5d84121b253f0bb656e6fd979ba48619b3fe9ead5",
         x86_64_linux: "848e1687c1a4f974b3ffd35730138f3cc9e91dc25ba6c2a927181af4b499436b"

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
