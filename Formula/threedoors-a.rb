class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260311.235851.c1816c2"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-235851-c1816c2/threedoors-a-darwin-arm64"
    sha256 "ccfb0035b5921841249f898546100fc7f30a15a8a6c83ade0bbec82efef87326"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-235851-c1816c2/threedoors-a-darwin-amd64"
    sha256 "206db3e3f2e79208862d2ccbbf219a62deb719b232980e3ee05678c28f2be388"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-235851-c1816c2/threedoors-a-linux-amd64"
    sha256 "93714b295204870896b65e5f6b87e89e9e387a02c8d9491df5d9d5b7b6bc7f34"
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
