class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260309.24b9254"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-24b9254/threedoors-a-darwin-arm64"
    sha256 "bf214b141a0924d05fd8c0267d0c30531f89f37ff66a1c3f6a4e6eb9e5cf1301"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-24b9254/threedoors-a-darwin-amd64"
    sha256 "6162318330a166635e609461cea92dd20e91798e2d29d88a2b7052a9057d42ec"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-24b9254/threedoors-a-linux-amd64"
    sha256 "6dd110029bf69bf7bb0e6004b8bd57d738451301fe105a7c9195e47aa3c6e739"
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
