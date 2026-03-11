class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260311.9a3ea04"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-9a3ea04/threedoors-a-darwin-arm64"
    sha256 "8e127827fa671aa940ab65d90be1ac0c13cfc637590e1c86074606610a3f6613"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-9a3ea04/threedoors-a-darwin-amd64"
    sha256 "0da90637011c42e7338d23637a7294ae0b6e9795505343f57f3136cbe483a154"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-9a3ea04/threedoors-a-linux-amd64"
    sha256 "aa2bf2111bd85f0d11732f61f3bf45eeeb2e53ed83a45bc3992930339141f2bc"
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
