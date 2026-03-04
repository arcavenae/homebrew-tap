class Threedoors < Formula
  desc "Three Doors - radical task management showing only 3 tasks at a time"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260304.c98631f"
  license "MIT"

  on_arm do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260304-c98631f/threedoors-darwin-arm64"
    sha256 "e407bbcf254be1a77f96c2747034809ad5166a7371329cff1ca97145963e75a2"
  end

  on_intel do
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260304-c98631f/threedoors-darwin-amd64"
    sha256 "6d17aedfb4cd7c67097ddf18df669196404ebb13ecc1ec964490cb64bc1b350d"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "threedoors-darwin-arm64" : "threedoors-darwin-amd64"
    bin.install binary_name => "threedoors"
  end

  test do
    assert_match "ThreeDoors", shell_output("#{bin}/threedoors --version 2>&1", 0)
  end
end
