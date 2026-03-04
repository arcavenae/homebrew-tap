class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260304.933b2cd"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260304-933b2cd/threedoors-darwin-arm64"
    sha256 "fed275f811501704e90c0f21be73b45ae2aa6a448e5dbc1702012891bbcc86cf"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260304-933b2cd/threedoors-darwin-amd64"
    sha256 "ea90b1584cfd7e82e7e74fbe607f3ed138a91252e1400d676044446460427630"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
