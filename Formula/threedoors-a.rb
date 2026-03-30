class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcavenae/ThreeDoors"
  version "0.1.0-alpha.20260330.055347.766563c"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260330-055347-766563c/threedoors-a-darwin-arm64"
    sha256 "1e569657d424080686b27feaea55292f011bd64a850dd65ca1648f267a69e10b"
  elsif OS.mac?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260330-055347-766563c/threedoors-a-darwin-amd64"
    sha256 "98988eca85b3910b066f17d1d2d8423b4b35fc6d92f4014905d02a4f681b2473"
  elsif OS.linux?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260330-055347-766563c/threedoors-a-linux-amd64"
    sha256 "1b2f301307e724f2c5a3c811ca470881e833674cb3e0bae11306fcdee7d43a88"
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
