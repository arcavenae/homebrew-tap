class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcavenae/ThreeDoors"
  version "0.1.0-alpha.20260329.173615.a773b48"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260329-173615-a773b48/threedoors-a-darwin-arm64"
    sha256 "c9e619472d6a5438e663a40ac13fda005266436f19d563faa08e1d9a566a2a7a"
  elsif OS.mac?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260329-173615-a773b48/threedoors-a-darwin-amd64"
    sha256 "a377cef047f61d4a75061e827c2547fb69e75d9c371e2770ee7c8ef604641e1e"
  elsif OS.linux?
    url "https://github.com/arcavenae/ThreeDoors/releases/download/alpha-20260329-173615-a773b48/threedoors-a-linux-amd64"
    sha256 "ca8ad42f9f1a5be352e239510b175e2579f9615930eadb68348b5cb5d6b72eb2"
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
