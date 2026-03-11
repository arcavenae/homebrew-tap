class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260311.b9b725b"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-b9b725b/threedoors-a-darwin-arm64"
    sha256 "5c2cf1ca79cc0d78d638b22f6e61bd9447c5e2709c9052c10e2ca2352cae4b75"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-b9b725b/threedoors-a-darwin-amd64"
    sha256 "f26b2b71e83faee80a3132373e7956e39694a21ce7a04d1bbfe52fd5177c6ba9"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-b9b725b/threedoors-a-linux-amd64"
    sha256 "f71cb28badb2f00e73109461e2aa170bb823efea8d47fb67f73ee194739646b4"
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
