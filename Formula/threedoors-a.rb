class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260313.183138.46c0b2a"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-183138-46c0b2a/threedoors-a-darwin-arm64"
    sha256 "67b4d21ecadd06a73883da3b3e7fae2f9eda0a7506f33163b3bd92173820b25a"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-183138-46c0b2a/threedoors-a-darwin-amd64"
    sha256 "4a437c93e56c0e7936f1ca752351e5c939218ebf2c3803cfa86775cb03cc0fe1"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-183138-46c0b2a/threedoors-a-linux-amd64"
    sha256 "28f7155cc98196edb9fd2500304148359ca0f79c22703f1f479e36aab4e3a76a"
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "threedoors-a-darwin-arm64" => "threedoors-a"
    elsif OS.mac?
      bin.install "threedoors-a-darwin-amd64" => "threedoors-a"
    elsif OS.linux?
      bin.install "threedoors-a-linux-amd64" => "threedoors-a"
    end
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors-a --version 2>&1")
  end
end
