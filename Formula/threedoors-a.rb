class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260311.8d3df7f"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-8d3df7f/threedoors-a-darwin-arm64"
    sha256 "dec152660ecf5edd07eaf9656a444adfcd4beba36b4eeb5e95221729132e1a59"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-8d3df7f/threedoors-a-darwin-amd64"
    sha256 "461c829a38f7e75bfef67eea4b354194231d0439c64470d37ceb5e21d124b8e2"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-8d3df7f/threedoors-a-linux-amd64"
    sha256 "43d14a6e80372673cb33e9e43c2c871ab91dc2221da2834f0a4d136665ebe9d7"
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
