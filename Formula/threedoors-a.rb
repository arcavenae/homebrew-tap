class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260313.044226.95b93b3"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-044226-95b93b3/threedoors-a-darwin-arm64"
    sha256 "3759e49e5097abc66792fa9081b9d1fc5672f1f0c8f739231eb2d3b1d80b773e"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-044226-95b93b3/threedoors-a-darwin-amd64"
    sha256 "c507d95356ce17bf61e9bb47c5841823e427fd57684d21f03684c99611f488ca"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-044226-95b93b3/threedoors-a-linux-amd64"
    sha256 "b34b83f5fe6219b893be01a7f9f53d72cdecc059c0d6597ac1ac5fa3038d36da"
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
