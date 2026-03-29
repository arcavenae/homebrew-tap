class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcavenae/ThreeDoors"
  version "0.1.0-alpha.20260329.221116.9c60616"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260329-221116-9c60616/threedoors-a-darwin-arm64"
    sha256 "5526ad51c330fd072f131689f55eed384d0c895d0b52561a231b2498d4593864"
  elsif OS.mac?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260329-221116-9c60616/threedoors-a-darwin-amd64"
    sha256 "cad0af4f97cd4a572771c767d21fd49ced3f41dc11cc38dbb22fae365f74895e"
  elsif OS.linux?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260329-221116-9c60616/threedoors-a-linux-amd64"
    sha256 "0be001d595f7d33f5ad25f67ff016c48a8565566ba9631436cfe5ebd34cabff0"
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
