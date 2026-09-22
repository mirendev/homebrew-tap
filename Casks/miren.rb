cask "miren" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.16.0"
  sha256 arm:          "b9e881f775a1f02a837cae97dc252e52bc9047d64d9670a003837f41997bdf01",
         intel:        "ea5352dc11454221be90ffcb0ef53960978b6dedb10c741191b6434637a0576e",
         arm64_linux:  "890ad100323a759e36853b87370122ab5e682c468ae897e4d651fb8c1cb2225e",
         x86_64_linux: "44bd41b8ac095449d80c686fd96fdf8af33bd5e05c29c430892faf8e6145d25b"

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
