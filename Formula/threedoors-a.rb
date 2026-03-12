class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260312.035546.638c8a3"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-035546-638c8a3/threedoors-a-darwin-arm64"
    sha256 "bfab7786c61becbd81817ed9b604ae7d8bc845871b9f816f837395796d9b3b7f"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-035546-638c8a3/threedoors-a-darwin-amd64"
    sha256 "8ef55aa04fcaea98dcc77f50562e121b4c2104dc84c377a013d6081d871392d7"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-035546-638c8a3/threedoors-a-linux-amd64"
    sha256 "5062da0e69636e83905aac911e9b236bef483814da234d0bdb07d0d0db208f7e"
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
