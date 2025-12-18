cask "miren" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.2.0"
  sha256 arm:          "223ba90b20d8306376c894908dc227fd52ab73a22b9c2b9ad2a90a11f25c616e",
         intel:        "3a763dc00b3e42f14a5311dff8afc8e8909053dd7867857da41d770f4b0c1119",
         arm64_linux:  "888d4286bca4a0bc886ef94ccaa48bed0312cad68a16256531db295a7a1f297e",
         x86_64_linux: "010c6823b4481a5ddd92c5eaa913b81890ee084bdce4f984d79467b7bc03cf33"

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
