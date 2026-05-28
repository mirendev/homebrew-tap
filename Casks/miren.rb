cask "miren" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.9.0"
  sha256 arm:          "2b698aa4d8d1386a7593ddec274f6a55b2f125bbc945ced386ea13ddfbc8ddf4",
         intel:        "f3a00f152ea4600a708a7cc0656bfc33dab63fcd3757c0433d3ff75a791d3ece",
         arm64_linux:  "f61f13dcadad61d0c147448a6931e2af6ae009d7bca65e56e4b855d00b62963f",
         x86_64_linux: "c0211364ad22d8196e0d3cdab7c444fa10c2e94dea8b4c738564be9d0e545cdd"

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
