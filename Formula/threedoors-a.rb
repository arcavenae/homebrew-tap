class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260312.194239.255f25f"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-194239-255f25f/threedoors-a-darwin-arm64"
    sha256 "1114eab57e5b86da66267f95063f686c0744cf1a298a34272198ab0b1a5d0ef1"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-194239-255f25f/threedoors-a-darwin-amd64"
    sha256 "5d2f415e2a1dd2c708b377db969802ff74ee3f9c69dcc9427db21f5043ed2722"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-194239-255f25f/threedoors-a-linux-amd64"
    sha256 "3fb14a908d4d0b3333f7cc19fef3e2f7f5aa8816946fcce214301d3bb973744d"
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
