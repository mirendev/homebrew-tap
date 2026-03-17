cask "miren" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.6.0"
  sha256 arm:          "f5dd59f52dcefe8d25b6a0ca345fa88333c5cf02d4ea17f2b13dd9363006fc82",
         intel:        "b731a6e73ec3205afec6c02e9819206a8292524ae9ac67dfeb795617b7dbded9",
         arm64_linux:  "c8d1f17911570f17b5ae13b72e3741d6d18892c853fc58e6e21a8cc6541171b1",
         x86_64_linux: "1c2b4ce6b30069f3f2d63790a688545ac1654fd1c280c41985454e40de33ec93"

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
