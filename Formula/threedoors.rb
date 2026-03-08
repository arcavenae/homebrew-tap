class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260308.09dbb74"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-09dbb74/threedoors-darwin-arm64"
    sha256 "e5f223c224bd0a67029136d8e3f9bfba4495c2d7bfa6350b545fbc1d3da5840f"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-09dbb74/threedoors-darwin-amd64"
    sha256 "ff5ef56ddd310c128c8fd94a04b6095c9d54c56ea6be452672250fc920dc2d4a"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
