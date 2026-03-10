class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260310.921742c"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260310-921742c/threedoors-a-darwin-arm64"
    sha256 "7168a17f5b24cb944a9774a3ad060d850defaf6e7b5471e79ed43d7b0c6382da"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260310-921742c/threedoors-a-darwin-amd64"
    sha256 "bf73589ab02325bb0847ad384899816408c2d3520ea20e7cdcee7f5d37306df6"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260310-921742c/threedoors-a-linux-amd64"
    sha256 "52404f7e8c4e9ea070b44484c0dc978097e4afe9e2195baf745854d4eeb02264"
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
