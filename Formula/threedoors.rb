class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260307.16b4959"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260307-16b4959/threedoors-darwin-arm64"
    sha256 "4d21e349f0487b3ea570cb9b2e604086c89bdd35f87e78ca882e5c9140c9afe0"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260307-16b4959/threedoors-darwin-amd64"
    sha256 "ff1ceb5f0c36408104bcefcc73572894bceaf25d4fd06a7242f5d28d8d3b7c04"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
