class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260308.7685041"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-7685041/threedoors-darwin-arm64"
    sha256 "b00f56da9c09ac5167a89e1fa88c1a9466fadc2c976e483d5a3182b3786020ea"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-7685041/threedoors-darwin-amd64"
    sha256 "643c27e4b00c3b028d7bc74422c8aaf1c489bb88df7c088b81e67f186dc2ddac"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
