cask "miren" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.5.0"
  sha256 arm:          "852fdd4c4bf9cb93c01795cb5ee265457d2dd223299ca190d796eb8be4cb5538",
         intel:        "1c7dc342d349c89eb514ce7e2610456692a6381bbbe5d07cb119565df2da04ff",
         arm64_linux:  "5140cbfe8d1ed5abd9a7949bdae444631ffa8e3fc339c83d9a68dc2f137fcc2f",
         x86_64_linux: "42e40d8701d2851bb08ce5ce923ed92a0d41d6eaa285f0ad259ec8d3c487d36e"

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
