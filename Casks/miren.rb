cask "miren" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.15.1"
  sha256 arm:          "046cb1edde864f01aa12097c49a3257f9cdc1d6d1288bc1ad43e2e8cb1aa633a",
         intel:        "d3cf88ac87498b692aa4275e56babbeaeed59fe64cd83ae63e0fdb49f31e4fea",
         arm64_linux:  "5deff31cc3c4e4d7c81288cfb910698e41b90c6111614aea4f50c2dc69932991",
         x86_64_linux: "1b1bd341a5c27b39acf7bf9711505707c4fa62f86c1fe3bfa49051abe854ba82"

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
