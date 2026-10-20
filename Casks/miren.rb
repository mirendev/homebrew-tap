cask "miren" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.17.1"
  sha256 arm:          "0c8022acbf41f36199a4a053d9a69e1e41ee0ccfcacd699192e12a7348c0e659",
         intel:        "dfc1a485416e95166ab6c306bac13ea8fe152a1d1b3605f3c423a9a68550fdf8",
         arm64_linux:  "43e277afdf82485876c267cb65adbfce6cfb6398f7313e9694620e891370ed15",
         x86_64_linux: "6c1f658ddbeb71c5be00ca1c18444506b875ada3d9d53617fe702164d5c7680b"

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
