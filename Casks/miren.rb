cask "miren" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.2.1"
  sha256 arm:          "688ef69b4481ca1c89ff91f82d471cbfd81233e662b1b16e78f8c5242f04fc78",
         intel:        "91bb921a2f9fca78535d29667bfb217085919b523c94c165c8633c33b18d1f75",
         arm64_linux:  "c756e80b94d717e71c28d72bc725169504df51948a4e4a6112d804a8b3fcf43b",
         x86_64_linux: "2c3ed8c06ca0cc0a35b12212377e6cc184fbad5c0263d8a9b696bab81688c088"

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
