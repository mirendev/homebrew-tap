cask "miren" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.7.1"
  sha256 arm:          "d5e259603e75e82725242d0477849062f65d8873833f71ba4e45ae9aefb12d47",
         intel:        "18784ea156de09f69bd7d6fcb382015c1117647e65afadff5061267a03faef8c",
         arm64_linux:  "6dd7095ea8b50aadff9835ecaa522884083fe23834d8909e1865d8fa76c0a84b",
         x86_64_linux: "54b344415e55e64ce32d2e9ada5ae515b630de71d09a074408e4f0b60f04d799"

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
