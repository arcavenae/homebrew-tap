class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260313.203234.4f872f8"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-203234-4f872f8/threedoors-a-darwin-arm64"
    sha256 "2e68040449fbb8f29d82a9bb2c5f70fb6cc37d83ff5975df6d1da31ce3506329"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-203234-4f872f8/threedoors-a-darwin-amd64"
    sha256 "320caeb3384521349e6ef90dd9884e1d315e8dbdde08eced9761a2a443c49e87"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-203234-4f872f8/threedoors-a-linux-amd64"
    sha256 "cfe19c570e9348281f6644bb5f57e1225b887bb7c46640b85c5b39fda18ae8d2"
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
