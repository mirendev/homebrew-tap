cask "miren" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.17.3"
  sha256 arm:          "d46e75050be083cfdf3a3a76bc573f82a4c0d65ea4ecb6bd70a9bb2945535e71",
         intel:        "6d4564244632982ac81b014d78e04d317966c9d658f2e0d291aa445f61a5754d",
         arm64_linux:  "062e6be84008fc2092a417946f0d51d2a2fb69ff5dba563b63b319fad078ad50",
         x86_64_linux: "a899b38e1e1174a58420596f8dcc85e5c557648620d9b16a98ac0ad0a300e2ee"

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
