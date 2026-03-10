class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260309.f2d3f03"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-f2d3f03/threedoors-a-darwin-arm64"
    sha256 "f98a513d6cab9b5129c4d17ab13baf9974f4bad365144f81265900b59dac3cf0"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-f2d3f03/threedoors-a-darwin-amd64"
    sha256 "d749acd9f634daccc7a823567dcb40f3caa61e0183d5367ab4380e098bfa90d2"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-f2d3f03/threedoors-a-linux-amd64"
    sha256 "ab3ad2605183b14b591b823670b0217c92c93632d2dc3692265522744dcba6ad"
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
