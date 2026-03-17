cask "miren" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.6.0"
  sha256 arm:          "5ae9f08088463deae5b909b4e196b511ec77200a2ec9656271f61959a89ea477",
         intel:        "dd197203903881249359e35f3b3f82fc9427f70f3681d9446a2949293c59227f",
         arm64_linux:  "9dd468b93ed7aad4624306574c2d31bde86d1ad26086bf5ae17bc2f0e1a762b2",
         x86_64_linux: "ebe7d5b58aa84136fcd3f49fc9b7d3fcc63c270c448f72d06e9413d9c29c9d7d"

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
