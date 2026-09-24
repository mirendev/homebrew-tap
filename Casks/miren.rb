cask "miren" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.16.1"
  sha256 arm:          "e37118049ad9ee1bcedbc2973163f4d98fe44549cb153250f262e9479b859e0d",
         intel:        "ce00a46435dc10a6e3492b46f4d313b2c47acfc6c585e54c80a7031de56f6bdf",
         arm64_linux:  "ec2fc9b644cb0004c9dc4bf2a1d1c031c4042193ec464a39b0fd113b89d5b0d7",
         x86_64_linux: "f3152844b9d9bd202165779d7783b7ee4dd605dd31e7b8f38935dcd473dd2039"

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
