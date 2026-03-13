class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260313.003931.930081f"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-003931-930081f/threedoors-a-darwin-arm64"
    sha256 "8ed12585079f5f3c7628a381f8522d6bc416bd63ddf41a3dc19dd31d5a8bc25c"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-003931-930081f/threedoors-a-darwin-amd64"
    sha256 "7b8bce63cad158a6197a1d835551ea1fb2072437992ef81b75a73132fb38938b"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-003931-930081f/threedoors-a-linux-amd64"
    sha256 "c3e151807c941bd6560e6a513489fe55ab4d5fa5bfd786d0d1e6d5945d0f5aad"
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
