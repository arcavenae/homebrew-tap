class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260309.a176d10"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-a176d10/threedoors-a-darwin-arm64"
    sha256 "8753114f5cf7f7fed97e6038cbe2b3ea393b9412cc9f0a83e03ec6c384d223a9"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-a176d10/threedoors-a-darwin-amd64"
    sha256 "28e95ad5e57c676dc1400b464f55faae1fa5889323c280fc19153d1ba57f9c37"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-a176d10/threedoors-a-linux-amd64"
    sha256 "f9ea754184072a399ba486a56cac6e99968c7e5dfe3b4beb77bc74eb9b489f6f"
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
