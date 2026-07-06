cask "miren" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.11.0"
  sha256 arm:          "8c9bed49a402c6eeffc6fb1b4a1ac030b4dc2810e37b016f360e4195e5273528",
         intel:        "ec4304ee8bbdc66ed2e5f093d7281d7a8b48e886fabde084bdf3f2c118946aef",
         arm64_linux:  "a7cae06c4913133d0d55cbac1c143ac1b8b3f3c2fd8b24189efcba9729ff9dc7",
         x86_64_linux: "b89cefcc78541c5bbe25aca4fd72216927348b40bac56ed43dac37a405b2182e"

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
