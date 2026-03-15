class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260315.183319.3277d14"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260315-183319-3277d14/threedoors-a-darwin-arm64"
    sha256 "c8451ea11809cd1af4b4170f6b760fb5d693e60f6519bc373380c639d306c661"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260315-183319-3277d14/threedoors-a-darwin-amd64"
    sha256 "c5cc7a88f3bbeaf9aea76922e97d66920cea706c0ab15752bc9923522966bf80"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260315-183319-3277d14/threedoors-a-linux-amd64"
    sha256 "bbd5519fcfbec659805c9773fc9b20e2d53fe7b5023a37368ab1cd97da41712b"
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
