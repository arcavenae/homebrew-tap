class ThreedoorsA < Formula
  desc "TUI task manager — alpha channel (updated on every main push)"
  homepage "https://github.com/arcaven/ThreeDoors"
  version "0.1.0-alpha.20260311.6be3765"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-6be3765/threedoors-a-darwin-arm64"
    sha256 "04fe834925ac6148de3d5b779e2f02050672d3af2d0604b0ec6e01ff985b8615"
  elsif OS.mac?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-6be3765/threedoors-a-darwin-amd64"
    sha256 "de02a4e2c23fc94ac398b5369c4a1df3b0292e79eca03859d3a6af2520169175"
  elsif OS.linux?
    url "https://github.com/arcaven/ThreeDoors/releases/download/alpha-20260311-6be3765/threedoors-a-linux-amd64"
    sha256 "b1ca022b271bcebcb8701c33966c15063496fa5ff13e48b9317970848b8fe8c5"
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
