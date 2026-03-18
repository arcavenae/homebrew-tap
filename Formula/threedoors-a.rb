class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260318.083814.745392d"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260318-083814-745392d/threedoors-a-darwin-arm64"
    sha256 "b68463e145adb018d52531fa92297656ac5bbd56bd0276db739b1379fff69806"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260318-083814-745392d/threedoors-a-darwin-amd64"
    sha256 "f76617c6351b1a2406644b100cff77145be111e93e15d7b18f30d5c1de703a4f"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260318-083814-745392d/threedoors-a-linux-amd64"
    sha256 "002095635dcf8602247bf3d3e3ee6084efb930372aeccbb8be91ea961dd13256"
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
