class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260313.040648.d90374f"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-040648-d90374f/threedoors-a-darwin-arm64"
    sha256 "293d64c51e8f821c34213fd57c48e9f594c90796aa8db5b124a3b2da8f47ad96"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-040648-d90374f/threedoors-a-darwin-amd64"
    sha256 "ae259b6fd3f0cff3b682c15e11f959a746e9d8ce96ab023bba6c406089d2ac71"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260313-040648-d90374f/threedoors-a-linux-amd64"
    sha256 "7ec5bc6530a86d3c5c2600195a9bdf5096c6811aea9f68b9ccceb83994bc064b"
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
