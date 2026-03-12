class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260312.192750.8f18edc"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-192750-8f18edc/threedoors-a-darwin-arm64"
    sha256 "2550b1767d84950fa975eedfad10c1fbc9dcdae908bbbe435a5dcd54daf0fdbd"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-192750-8f18edc/threedoors-a-darwin-amd64"
    sha256 "397cc5a819a64b59d0c0c627ef78cdbe073bcd721c3395a9b14f944b3e95a222"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-192750-8f18edc/threedoors-a-linux-amd64"
    sha256 "29d213f50aa63c85e65eec6d1994fbef0e3f5eb9d70de32aa31f2a3b1b5ac706"
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
