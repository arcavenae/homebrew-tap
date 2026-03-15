class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260315.230602.bb35caa"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260315-230602-bb35caa/threedoors-a-darwin-arm64"
    sha256 "a84dc42b0fd397cb8ca2755cf732e5397fde506b30c442e44c57e42598fd6b14"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260315-230602-bb35caa/threedoors-a-darwin-amd64"
    sha256 "b55ac1e0fc90d0a8b6cdc14e07bb9123c2cd61f8ce34e1284ddef645dcbf4d8c"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260315-230602-bb35caa/threedoors-a-linux-amd64"
    sha256 "c26d14378ccc76d99b830c675015b16de2d43ddbde645eb3d7f8c5a9b47675ca"
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
