cask "miren" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.4.1"
  sha256 arm:          "42279353bc5b3717cd2934183138186a0705081fcfce23bbb0fa0ee4d900a460",
         intel:        "89807cd319a2336021d68fe73b7f740f6619867f4d90e7ba06b0823ebb16737e",
         arm64_linux:  "156b0c7b383faae756923baebfd83e14fd781578c8bd23339bd4b9c0bc32f2c7",
         x86_64_linux: "b010779fcdba7c00f913d360d9f0c3435e7f4fa4beb34ce4a9998ab03ac0cb6e"

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
