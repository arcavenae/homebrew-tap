class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260309.dd93211"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-dd93211/threedoors-a-darwin-arm64"
    sha256 "d5f37664e9ced0697510e0690a4a8a08516512d3b053f9d729f058f2a23a4952"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-dd93211/threedoors-a-darwin-amd64"
    sha256 "be6a1decf111cb7d597a95c1a71ea9070ba00a39ac61818b7082ad0ce3c299b1"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260309-dd93211/threedoors-a-linux-amd64"
    sha256 "e35a7343c0715ef7827423a4f595afd01d4fbd8fbc71be7940d3ce3456606dbe"
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
