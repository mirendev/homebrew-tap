cask "miren" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.10.0"
  sha256 arm:          "d88cfa1ec2b776a70eec6f6fffc3fb194f7d990ed069d126a96ad0412b7ebbf0",
         intel:        "834ca6a4336b24ef4f68078d144bb1fc0022fbd21976089f594a731e551fc4ae",
         arm64_linux:  "3351492cde33ba6b819cff6cabc8c8d13c3e74c7197615e0af109e3086262f26",
         x86_64_linux: "08f568ee9da8cf75c8283dd2ce7131626a96e76c213d0dea5846dafaf4fdfa3d"

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
