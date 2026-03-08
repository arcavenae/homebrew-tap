class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260308.db7797d"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-db7797d/threedoors-darwin-arm64"
    sha256 "97667f3c64c09e2a973d66d858a9de23464d0a0d470d5b7da5e0b3a1cb0061ca"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-db7797d/threedoors-darwin-amd64"
    sha256 "0128fa0cadb5fb64246c0372a3d253d6e78f96e9eb6070e91484e309edfe1728"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
