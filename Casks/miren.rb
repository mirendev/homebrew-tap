cask "miren" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.3.1"
  sha256 arm:          "7e2a5239b8456236bc07958a123ab1fba264995d81fb63b2ebce49f910c177b3",
         intel:        "3bc1c3f6614bc7a2b6191d1fd9d35076161e32604755de3b6ae184e201caf0b5",
         arm64_linux:  "f67ebff0bb8179bcd0d7e6399513391d6bb4cba0bfe7dba47ad58f81fe4728cf",
         x86_64_linux: "82c3971a4791f36e6eeafaf56ae8bb098b7182a443ae29610951fff0e7aba044"

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
