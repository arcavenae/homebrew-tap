class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260309.a8ce5f2"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-a8ce5f2/threedoors-a-darwin-arm64"
    sha256 "322735fda21332d595554e12bc3c7a3f2bc165354dda709e35bb872b17d93f3a"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-a8ce5f2/threedoors-a-darwin-amd64"
    sha256 "395ea8703394e78f94181381c3cc4d461e19115aef2d2a89d0ea3d237cfc2f02"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-a8ce5f2/threedoors-a-linux-amd64"
    sha256 "3a0217a427419921c29b5387d88005b85bca059cfadcc09bab291d748879af59"
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
