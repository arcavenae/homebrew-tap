class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260311.ec4571c"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-ec4571c/threedoors-a-darwin-arm64"
    sha256 "af492412ba457f225072c19491e3ada87d7fb8a2934295de1ca9fa52781e63a3"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-ec4571c/threedoors-a-darwin-amd64"
    sha256 "e80602d37a5a12378d9386bfbe3f7943213a0ce878330c6b8a903fb03dab5e66"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-ec4571c/threedoors-a-linux-amd64"
    sha256 "7b91de3c4b887e2f349ffaff61ecd3ff12b9b18334762d766a097494f814b6c6"
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
