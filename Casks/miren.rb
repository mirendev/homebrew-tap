cask "miren" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.6.1"
  sha256 arm:          "fe6654f3a09437e05dc942871f2bf8eedb031fe8f91c617c84184749e7b02868",
         intel:        "23893cd19b6dce9de310bf1de72eaf31a1cc104e685b9db08bfa3621a12772d0",
         arm64_linux:  "2e77e3ae9bff8371c680a5a9fce389522dc3c43de812c0e0e7946b34cacfe87e",
         x86_64_linux: "4621972b89cb5bb3584912cd1b2300426681f282c83d48ef8c9b4bb25f30642a"

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
