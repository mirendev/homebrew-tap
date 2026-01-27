cask "miren" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.3.0"
  sha256 arm:          "df9eef8109cbddcd1b3e64528797473bd98ccbc110273fa1aa1705d2ce0ee244",
         intel:        "c08f4c4b926adf3cb964586716b85a0621caaba7c12cc5677099d05d50c1b0bb",
         arm64_linux:  "42011a99e4e81f78a13d5c429107294bad6dd64c8d4be3008cff68a98dd0432f",
         x86_64_linux: "a5a0e846e9b3936464b9538041fe87998a9767adc04fe371448062111501ed1f"

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
