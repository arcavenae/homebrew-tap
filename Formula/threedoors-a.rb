class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260313.002132.480bee9"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-002132-480bee9/threedoors-a-darwin-arm64"
    sha256 "bf09b9d06a60e5c3dd5878469087ff1e09d1968c66994be4992154ac0141b878"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-002132-480bee9/threedoors-a-darwin-amd64"
    sha256 "e09b86eb155d1e3260d6f6d48c8b3b22df64cbc8df9cd8ea162f61fe06319322"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-002132-480bee9/threedoors-a-linux-amd64"
    sha256 "78b1ef15c3d1fcf15f9ec1a8025f1c272b4c8f075d0716e53463202e44da45ff"
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
