cask "miren" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.15.0"
  sha256 arm:          "a7783d441cbbd3bb054fb27af56b3a80ead5a03674d20ed983c13cd4ab1578f3",
         intel:        "776bf81c844b690d37d37515002baa3cc901cc1aded41a3f20078b6c761e19a4",
         arm64_linux:  "89898297abc883a0d58df1c7f22ad987876a70e17236245f963e0f2a7fa2ce83",
         x86_64_linux: "84858a7650cfec9b76030efb0dced2406ef345bd462f2b820591e82e57ddfcda"

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
