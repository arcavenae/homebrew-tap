class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260310.1681c28"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260310-1681c28/threedoors-a-darwin-arm64"
    sha256 "2b9240d4a4e0b15a4a52f75e1116f95ba858425ced8361dd423561adc0e4dbb2"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260310-1681c28/threedoors-a-darwin-amd64"
    sha256 "b777646b829f8be2199d9c629f71b9ace930a32548290f7ebcc803c9c04afe7f"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260310-1681c28/threedoors-a-linux-amd64"
    sha256 "c1725e01d91a2b5fa3bed6f1dd03c11d5e5a9ebbe427606ba4c74dd3878a6a01"
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
