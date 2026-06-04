cask "miren" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.9.1"
  sha256 arm:          "5c793e1f654a3a72d162a47e5669aa33a2842da2cd0312d91e97e778766141ee",
         intel:        "0c1f1f9504f3f36d94da69452319ee962eb660aa4126cc6d30703a1dd2c61b9b",
         arm64_linux:  "fbbed840e20dab76b486e6404e7ad06f50977a72af11fd6f4ebb36181d4f2b82",
         x86_64_linux: "a158d9825e30ed156c7fa9ae7892edd522363395af00bba829f697a61e9f3e6c"

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
