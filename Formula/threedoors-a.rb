class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260311.d2ae315"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-d2ae315/threedoors-a-darwin-arm64"
    sha256 "dbbe8cd187d571b7a23230fa1b15deca973b7a5ab5038a8d89b037c0359b908d"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-d2ae315/threedoors-a-darwin-amd64"
    sha256 "91ab796e9867d7e38e5bf83fd458560c377e86d9f9d91e07df63c804a36968cd"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-d2ae315/threedoors-a-linux-amd64"
    sha256 "90402679e57629c3d811efcd142eacb30e5e9981416dfda6d84d067fdd5844e7"
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
