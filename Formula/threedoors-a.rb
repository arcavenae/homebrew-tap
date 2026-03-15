class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260315.210657.9e6f444"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260315-210657-9e6f444/threedoors-a-darwin-arm64"
    sha256 "ff29650ed0a686a7e854f065c8f7118d854faa9b198723a32bf7b55079378be8"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260315-210657-9e6f444/threedoors-a-darwin-amd64"
    sha256 "1e8bbd627369e8b338ad322ab32c33cfa857cef5db91121768d2609442b437ed"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260315-210657-9e6f444/threedoors-a-linux-amd64"
    sha256 "c089eff77c290c4c073828efa05fdd500eca09be31755650be38da2c8b248b13"
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
