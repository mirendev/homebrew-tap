cask "miren" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.17.4"
  sha256 arm:          "3efbd0d45da663ac7a8890727f5389d36caac5a511d129b9e79dd8389adeef16",
         intel:        "0fe3b535e56b82e3694caa45e7dbff9c34ee96ddd4932b0a20f80b8c037ed65b",
         arm64_linux:  "878bb25a6eb44adce2589a869bf3f9287bf7bbc5d6ef0ad169f1c85d80276046",
         x86_64_linux: "e7842705ead50cf326f02487cf88529205b4664f0b13ce314c787033ee1946c2"

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
