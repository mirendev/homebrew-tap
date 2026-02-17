cask "miren" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.4.0"
  sha256 arm:          "910c92dd54e05a88e87a3911cacf716c20f06c838a3f5eb1440730c2291d36ae",
         intel:        "eab886b3fc84995b0855ecfebefd6dfbe035c9652797b14f961e79976b70323c",
         arm64_linux:  "eca685febb2300faad651e2e8044f02a3559b110697e324f64757bde086f066c",
         x86_64_linux: "9e0237ed89e846f9c604cdda9e9aded3f6d2a503028c82d268a4ac19e45bb6d0"

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
