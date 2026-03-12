class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260312.221434.3fc7686"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-221434-3fc7686/threedoors-a-darwin-arm64"
    sha256 "f919ae2878a07589ea9633a4faaea487c6de322cafee71a2cac1c58d8e07a494"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-221434-3fc7686/threedoors-a-darwin-amd64"
    sha256 "7c036e6bf355ac8ec01145796fd7b0b65ff808be52e69bccfe82cd00be48ef7b"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-221434-3fc7686/threedoors-a-linux-amd64"
    sha256 "a36477e8e552df30192982817ff521e51458e5ec3d9d96eb368a5c33c29dede7"
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
