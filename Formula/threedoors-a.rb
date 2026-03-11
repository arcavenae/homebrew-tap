class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260311.42a7450"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-42a7450/threedoors-a-darwin-arm64"
    sha256 "5528f03326398de91c116dc1d81dfd49e5be51d684d9ee1c27e8695efbf5f9b9"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-42a7450/threedoors-a-darwin-amd64"
    sha256 "af08e4f3fff3385c8bf7bfa20d9a659420bdf0200fde5618f915f95f5909ff2d"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-42a7450/threedoors-a-linux-amd64"
    sha256 "7502ccbb6118b47d86700dcc6a6d3b2beb80e5315242724d8ef93b76645adb1d"
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
