class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260311.215155.7394bec"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-215155-7394bec/threedoors-a-darwin-arm64"
    sha256 "067a61a78158128d2c9e4951569383d79162082f85f71b194072ee33de40aa63"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-215155-7394bec/threedoors-a-darwin-amd64"
    sha256 "fff903de6d62706c93a686579e1fa82ab63017e775bc836f880d159d05528c1f"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-215155-7394bec/threedoors-a-linux-amd64"
    sha256 "60e18885a546e26925d2689ffcc66aab990ac98fe1ba5823d560cf1e236f629e"
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
