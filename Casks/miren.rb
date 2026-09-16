cask "miren" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.15.2"
  sha256 arm:          "2930643802e06001cec4ce4f69c0b1ca752b6d388815ac4715157598f0200382",
         intel:        "000902078a05a0927f1bfa1c33d91c967e963c1da30beea24b06fbabb67399c7",
         arm64_linux:  "76889003b4871014bcb5bc538c56c345a770880b0b152dc7c4f47755708df7a0",
         x86_64_linux: "31c28da62604d6ee9cc78a4888f726de3505b712917adef8437856e0885dc5eb"

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
