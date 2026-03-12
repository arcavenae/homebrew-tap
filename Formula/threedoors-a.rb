class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260312.182518.2c93cc9"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-182518-2c93cc9/threedoors-a-darwin-arm64"
    sha256 "da368095d9ed2644339a0020fc94f2e707d5fa76eadaa9794613ace07688dead"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-182518-2c93cc9/threedoors-a-darwin-amd64"
    sha256 "7d8823afd9c25c2879b52614d5b4ad8f1f11a0b0793d254aca58a2d8b8b0d8b0"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260312-182518-2c93cc9/threedoors-a-linux-amd64"
    sha256 "1e7085ab18c9c33f84282df29b12792ab88b997b4c3570952acb962cf9aeb4a3"
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
