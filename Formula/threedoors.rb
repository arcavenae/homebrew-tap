class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260308.99480ce"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-99480ce/threedoors-darwin-arm64"
    sha256 "57b52e394c470367bf4e9093a9bae5ced7f882bfdd7ccc59c5c49a6090ac283f"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-99480ce/threedoors-darwin-amd64"
    sha256 "ce2538e28a90a53d5f5baa25061123a2da7dda9f0d3773ecd65acf1a2eab4bc9"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
