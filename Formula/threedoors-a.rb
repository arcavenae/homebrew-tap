class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260311.180faae"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-180faae/threedoors-a-darwin-arm64"
    sha256 "8879485f75ceed4532ec59e5583957bcba1cd30a6581dabd4f02b091ab6e86f2"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-180faae/threedoors-a-darwin-amd64"
    sha256 "c31c4f0d6ef3509745b48c2b89bcd7357f6aa061892f3416ef2c4168eb673964"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-180faae/threedoors-a-linux-amd64"
    sha256 "de2e3b27c5f137034afd0ce33a351a323b32f27a1e9adb6c5d3e8f9b406ece0c"
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
