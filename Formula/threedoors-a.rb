class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260311.f828d03"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-f828d03/threedoors-a-darwin-arm64"
    sha256 "f4b8c165740b1f9a3b358c8b4f3aecfa6e6c94b9ef46fbd95fb36e8a4f622e82"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-f828d03/threedoors-a-darwin-amd64"
    sha256 "5d57a9815b6c9abd6c7ae4022708b47fcd7001f2ef6f5be03ad9b9293008cdad"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-f828d03/threedoors-a-linux-amd64"
    sha256 "f4a54d64de939794af313b27efc66c453ab141fb10ef41c3f6273a628828f288"
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
