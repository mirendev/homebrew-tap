cask "miren" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.17.0"
  sha256 arm:          "0f4a600685664a572b0105236ef061d33974eeabbec3d5112eacf6c0ede1b19d",
         intel:        "a03becc8c85c6cda43533db1b79e0b1df5e0d3ae613de7a25eb51f5278915b14",
         arm64_linux:  "3e802866a92e83d3344a64aecdcb30904bb0affcf6b08240556fba0399124275",
         x86_64_linux: "1b627d622de15fd95b6122aefe783601f335b986462edca53c0dd14cfed25a81"

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
