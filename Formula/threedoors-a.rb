class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260311.233824.c9f4204"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-233824-c9f4204/threedoors-a-darwin-arm64"
    sha256 "ab4298ca6f381c9b80057fd9f1c1786fac9a604a0adcd2e4db0d889fc7193cd8"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-233824-c9f4204/threedoors-a-darwin-amd64"
    sha256 "af0224cc1801a1f049f639a7a2fc778122c2cd66bbb3bf70f9b0782bc4899b0b"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-233824-c9f4204/threedoors-a-linux-amd64"
    sha256 "00e60dba628c2b86103704fe22767b64a97f415555d062ace055e62289dc0a64"
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
