class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260311.235404.5c50ff4"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-235404-5c50ff4/threedoors-a-darwin-arm64"
    sha256 "176bbe4438ae2611bb59316703cd3231ee90aa7627bb068a355e8473e1e51fcf"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-235404-5c50ff4/threedoors-a-darwin-amd64"
    sha256 "7eb22d1421e144baaf0f52cf9d8fd1e25c4ab0c0b654925fc95d2893da2b00dd"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-235404-5c50ff4/threedoors-a-linux-amd64"
    sha256 "b2ab2f52a9fff0937e3d1160745e22b360d384a9c665791dfc1d912a2a4c4e18"
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
