class Threedoors < Formula
  desc "Radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260308.cdda713"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-cdda713/threedoors-darwin-arm64"
    sha256 "6aa1eaf3928a3b1bd9d4545915dbd6f888928cf8b9f3c5e04d9d5f8856ce5aa2"
  else
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260308-cdda713/threedoors-darwin-amd64"
    sha256 "35894844e4dd9da6289f2d4fd8960a2227d160cd19147f86ad60bedacef35be9"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1")
  end
end
