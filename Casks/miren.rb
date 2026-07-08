cask "miren" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.11.1"
  sha256 arm:          "2efb0da86da3e488413c1add6049d6bcc7cb1db19c914bca5596885e3c4f0db3",
         intel:        "16ad3ae6799bd9a999c19f791bce6de846ec9198568855b88c6f204119455429",
         arm64_linux:  "fd9c173c37b7182871244b496cd60a7d7d2695a28c3537fba69f489a6eb32adb",
         x86_64_linux: "6ed6b76cfe805f328a458454c3bd46d080624f6ac907887269dd4f40ba6c1f69"

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
