class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260313.150209.c16bbba"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-150209-c16bbba/threedoors-a-darwin-arm64"
    sha256 "48235b86c1ba1dc6648925d42a0cd69bc2e1a99c022159ede793b76a38f76e3b"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-150209-c16bbba/threedoors-a-darwin-amd64"
    sha256 "63c707e2388a74d917938091dc78bc607dc907677636567a338a52aca8782586"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-150209-c16bbba/threedoors-a-linux-amd64"
    sha256 "ee5a47e488fce243a3c3d4c2247c6cc7e8429ca66f22cfde3c1c7f0aeeb7b2a0"
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
