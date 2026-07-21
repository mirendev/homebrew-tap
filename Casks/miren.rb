cask "miren" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.12.0"
  sha256 arm:          "386ebc6f29e63c4eb61c36620408aaac997d23a31d7a9347df61d7ce6ed5466a",
         intel:        "a2a2291a5607222aea9103250d3ed626eba0333efd71c7dae8dbb2af852565aa",
         arm64_linux:  "957a57fb68b9bca0c4601558ccd8161c178977c9a9c12062db13b0477d52c1c1",
         x86_64_linux: "d7ec812b1835119b80458d84c709dc42fef7a5d8cb5b971651fe5c1579c8a7ce"

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
