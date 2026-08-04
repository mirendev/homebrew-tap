cask "miren" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.13.0"
  sha256 arm:          "9600a546b2b962963eaa834da8b6cd3dd63e8b846289937bd564ec5419079668",
         intel:        "85dc2c810547bb2547ad98057d1ab23487409141c8f2567f3e10de98b1067c46",
         arm64_linux:  "b1bf867e9fe3587fd01dd1a668a6f697138cae7fee5b2a230e7db9a584c3e24b",
         x86_64_linux: "005d38adda334510dd08aaf0a56babeb0bbee7f365b8a5f5409c54043b08f737"

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
