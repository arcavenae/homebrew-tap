class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260313.063759.9427f49"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-063759-9427f49/threedoors-a-darwin-arm64"
    sha256 "3e1e20251faf27ff6d3295c339083d660371f4b0e218c81700aa45b76b213b4a"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-063759-9427f49/threedoors-a-darwin-amd64"
    sha256 "fba71f5259d52c37df278f11410dd8e07447e788ff8412047bde948855b5ad1d"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-063759-9427f49/threedoors-a-linux-amd64"
    sha256 "06014742083038c688911d67c03fa4ba950a814b974ec48a57674bd5c4f22f26"
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
