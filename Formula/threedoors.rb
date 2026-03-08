class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260308.24cb5f2"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-24cb5f2/threedoors-darwin-arm64"
    sha256 "8c0b722e90c9c3a921cc098135445c6fade469d5f2ddac6a5d54e4cda4dcd279"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-24cb5f2/threedoors-darwin-amd64"
    sha256 "a1998648962126ebe4747431c55f27d4e7944a77b5478d5b711ef6fa4aeacd0f"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
