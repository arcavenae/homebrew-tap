class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260311.232059.dafe743"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-232059-dafe743/threedoors-a-darwin-arm64"
    sha256 "da0c877a27ac2c126ebca4c9ddfa6ab1f36416a49304101f3371521e5de42f6b"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-232059-dafe743/threedoors-a-darwin-amd64"
    sha256 "e284e4851c5691322b424ea76632de00d19bc0f7a1ce1312b02a00e48fcf3fbc"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-232059-dafe743/threedoors-a-linux-amd64"
    sha256 "8279e66481cfcf81ae6630515b218d6f2bc9797a308b8cc7142cd6a1dbf5b952"
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
