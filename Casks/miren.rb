cask "miren" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.17.2"
  sha256 arm:          "9a2f56aac1854208730cdc71e8a33da3508429021fe4ac9a28ca3543bc741f5e",
         intel:        "b53a7af5a1db7a258389fe22cc23d4398573c0b4adf7fe9b10e99e7b7bc7392d",
         arm64_linux:  "8cf8eec446c7fc2758d0d0c2f196b46ad172875b358247097bc4c1037d0c34fd",
         x86_64_linux: "4404685c52b4ba8c268c8900f8184cabb3afa7c96fb040b8eba2346b19ffea1d"

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
