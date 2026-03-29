class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcavenae/ThreeDoors"
  version "0.1.0-alpha.20260329.231027.c3953e0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260329-231028-c3953e0/threedoors-a-darwin-arm64"
    sha256 "4c4f145e4df58655cbf6eecc9ab87887913890ce177d39d2c2ee132211f4c7f0"
  elsif OS.mac?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260329-231028-c3953e0/threedoors-a-darwin-amd64"
    sha256 "3504ac7f38ec3366d02e73b90254496a9611ec2a20b47b643dc33bd2a0fc7721"
  elsif OS.linux?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260329-231028-c3953e0/threedoors-a-linux-amd64"
    sha256 "bce5085567af10c0be9413a6d5ad97ea48a38c73b100c12dcec028486a8bc743"
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
