cask "miren" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.12.1"
  sha256 arm:          "d5c24e2071dd01dfecfbf981b4fad0305bc861854b906c86f1e590e0d0d361a1",
         intel:        "31fc19f62cff1c8966c7c4aa2f95ea886309a702c0b3e09d6e31461ac98da3d0",
         arm64_linux:  "f1aafca57de76160f937f44840f8abd5dcbcb116bd1dd5434fd5367d41ab14b5",
         x86_64_linux: "5045b4deed267df7f28ffddb8ac74078dc4a01036f5e2a166abe1322c0f5858b"

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
