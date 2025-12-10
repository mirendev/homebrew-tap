cask "miren" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.1.0"
  sha256 arm:          "1f42c9eb0aae2d67df2f1dcfe62494ee5272b33e22ea46ccd8dc4cbbaa0840a3",
         intel:        "b60cf33a8a695e9e606107cfa98c010deacb4dbdaf82e875a7bbc14bac378a7f",
         arm64_linux:  "be9f5bae703ec77a6018d885eeba0d0ce43f8c5962f5c04fe1121e94d8e36e73",
         x86_64_linux: "ab4978ae806ff99dab03686773413021377b957ef76da3edbbb4aac87204aae9"

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
