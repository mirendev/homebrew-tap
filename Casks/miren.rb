cask "miren" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.15.1"
  sha256 arm:          "b9e30ceb09072dcc264e071334e4e46cecb006ed151e066225050f695e64dde5",
         intel:        "11823d92cc4efd5cb551c70198a04c83ffc472a3dcf55f98166650fd71828010",
         arm64_linux:  "ddb5256069963c83224e84f5da7569b964f15b036542db92c6abcbe5998bff0d",
         x86_64_linux: "6c8e52628864eb94ab60aa75f51fda9ab815f267372ac810a3d86c1f133187dd"

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
