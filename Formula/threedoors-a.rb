class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260312.020617.2bb0b75"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-020617-2bb0b75/threedoors-a-darwin-arm64"
    sha256 "61c672bf882bc3197367b1ac0e512ae484258d7bbf94659c23fd8c55fd75ee25"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-020617-2bb0b75/threedoors-a-darwin-amd64"
    sha256 "5bb33b605a15877cb9e3848454796f648d1e8ab3bd3272d83ed0c2244a9782b8"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-020617-2bb0b75/threedoors-a-linux-amd64"
    sha256 "d1df789205842d067c641ed8cd0b38763ee758fc2de99cbd259220c32f0e9cd0"
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
