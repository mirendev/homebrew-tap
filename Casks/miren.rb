cask "miren" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.8.0"
  sha256 arm:          "2c8a997dd3493c18b368c8d7597694f99490e18d9cd2c0688e7a81d6a3b5b2a8",
         intel:        "8c30102a5a230885b596ac13c451c5e68b08179e4d035e265f3e21dc0623a941",
         arm64_linux:  "c2572e9d803b1a0d297a2d5c98566f1a3d17585dcae23a10fb5c153dcf612a51",
         x86_64_linux: "0f87ca5f17158535be1be5551b1696871ad0ce5ca2bd7fb4b5f80125ba66e686"

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
