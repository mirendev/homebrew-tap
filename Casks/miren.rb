cask "miren" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.14.0"
  sha256 arm:          "66e74b3a627a393502b04ed7e8c856346db9acec353cdc11792da4df488f8ee4",
         intel:        "8e774967e08355377afaa81b6c35eca9651295e8842167a48b665e27d7fff84c",
         arm64_linux:  "0d0f7f61f26cabc23c4d5feb04188e7209c36b81eb785066cd90b153393984c9",
         x86_64_linux: "5fb39dd74d78ff03dd46d37c1a717c19a4e6b97f7a2de2ae95c6569020206459"

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
