class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260308.cbb01eb"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-cbb01eb/threedoors-darwin-arm64"
    sha256 "2f079a2c115d61bc968b4613b17ad9a2e3a81f7665783e7298a3fbcc1ddcec01"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-cbb01eb/threedoors-darwin-amd64"
    sha256 "1c92554acb278de6dacf077c261ce909ac5796a7d03b0e2a198349ba8e7b0b77"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
